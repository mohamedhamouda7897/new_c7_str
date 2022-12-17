import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {

  static int CATEGORY=1;
  static int SETTINGS=2;
  Function onBtnClicked;
  DrawerWidget(this.onBtnClicked);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .8,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            color: Colors.green,
            width: double.infinity,
            child: Padding (
              padding: EdgeInsets.symmetric(vertical: 60),
              child: Text('News App!',textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22,color: Colors.white),),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: (){
              onBtnClicked(CATEGORY);
            },
            child: Row(
              children: [
                Icon(
                  Icons.list,
                  size: 30,
                ),
                Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: (){
              onBtnClicked(SETTINGS);
            },
            child: Row(
              children: [
                Icon(
                  Icons.settings,
                  size: 30,
                ),
                Text('Settings',
                    style: TextStyle(
                      fontSize: 16,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
