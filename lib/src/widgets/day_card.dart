import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:language_school/shared/theme/app_colors.dart';

class DayCard extends StatelessWidget {
  final String dayName;
  final String dataNumber;
  final String lessonsQuantities;
  final String dayCost;
  final bool isTheDay;

  const DayCard({
    Key key,
    @required this.isTheDay,
    @required this.dayName,
    @required this.dataNumber,
    @required this.lessonsQuantities,
    @required this.dayCost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(150, 200),
      painter: _ContainerTriangleBottom(isTheDay),
      child: SizedBox(
        height: 200,
        width: 150,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                "$dayName",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkBlue,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "$dataNumber",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  color: AppColors.darkBlue,
                  fontSize: 28,
                ),
              ),
              const SizedBox(height: 15),
              Divider(
                color: AppColors.darkBlue,
                height: 5,
              ),
              const SizedBox(height: 15),
              Text(
                "$lessonsQuantities lessons",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              Text("Total cost $dayCost"),
            ],
          ),
        ),
      ),
    );
  }
}

class _ContainerTriangleBottom extends CustomPainter {
  final bool isTheDay;

  _ContainerTriangleBottom(this.isTheDay);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    var path = Path();
    isTheDay ? paint.color = AppColors.green : paint.color = Colors.transparent;
    paint.style = PaintingStyle.fill;

    path.moveTo(0, 0);

    path.lineTo(0, size.height * .85);

    path.lineTo(size.width * .5, size.height);
    path.lineTo(size.width, size.height * .85);

    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
