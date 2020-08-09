import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            color: Colors.grey[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){},
                  child: Icon(Icons.keyboard_arrow_left),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'September',
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    color: Colors.black
                  ),
                ),
                 SizedBox(
                  width: 10,
                ),
                InkWell(onTap: (){}, child: Icon(Icons.keyboard_arrow_right))
              ],
            ),
          ),
          Container(
            color: Colors.grey[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FlatButton.icon(
                  onPressed: (){}, 
                  icon:  Icon(Icons.settings_applications), 
                  label: Text(
                    'Filter',
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: Colors.black
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}