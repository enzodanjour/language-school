import 'package:flutter/material.dart';
import 'package:language_school/shared/theme/app_colors.dart';

class SidebarItem{
  String title;
  IconData icon;
  Color color;
  //Widget pagina;

  bool selected = false;

 SidebarItem(this.title, this.icon, this.color);
}

class Sidebar extends StatefulWidget {
  
  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  List<SidebarItem> itens = [];

  @override
  void initState() { 
    super.initState();
    itens.add(SidebarItem('Lessons',Icons.widgets,AppColors.darkBlue));
    itens.add(SidebarItem('Dictionary', Icons.library_books, Colors.grey));
    itens.add(SidebarItem('Homework', Icons.business_center, Colors.grey));
    itens.add(SidebarItem('Tests', Icons.description,Colors.grey));
    itens.add(SidebarItem('Achievements',Icons.star,Colors.grey));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: FlutterLogo(),//teste Easy Norsk,
          title: Text(
            'Easy Norsk',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: itens.length,
            itemBuilder: (context, index) {
              SidebarItem item = itens[index];

              return _itemSidebar(item);
            }
          ),
        ),
      ],
    );
  }

  _itemSidebar(SidebarItem item){
    return Material(
      child: InkWell(
        onTap: () {
          setState(() {
            itens.forEach((item) => item.selected = false);
            item.selected = true;
          });
        },
        child: ListTile(
          leading: Icon(item.icon,
            color: item.selected? AppColors.darkBlue : Colors.grey,
          ),
          title: Text(
            item.title,
              style: TextStyle(
                fontWeight: item.selected ? FontWeight.bold : FontWeight.normal
              ),
          ),
        ),
      ),
    );
  }
}