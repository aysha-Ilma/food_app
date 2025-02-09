import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Drawerwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              accountName: Text("programmer", 
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
              ),), 
              accountEmail: Text("dearprogrammer@etc.com", 
              style: TextStyle(
              fontSize: 16, 
              fontWeight: FontWeight.bold,
              ),
              ),

              currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("images/avatar.jpg"),
              ),


              ),
          ),

          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.red,
            ),
            //List Title
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),


          ListTile(
            leading: Icon(
              CupertinoIcons.person,
              color: Colors.red,
            ),
            //List Title
            title: Text(
              "My Account",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),


          ListTile(
            leading: Icon(
              CupertinoIcons.cart_fill,
              color: Colors.red,
            ),
            //List Title
            title: Text(
              "My Orders",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),


          ListTile(
            leading: Icon(
              CupertinoIcons.heart_fill,
              color: Colors.red,
            ),
            //List Title
            title: Text(
              "My Wish List",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),



          ListTile(
            leading: Icon(
              CupertinoIcons.settings,
              color: Colors.red,
            ),
            //List Title
            title: Text(
              "Settings",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),



          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.red,
            ),
            //List Title
            title: Text(
              "Log Out",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),


        ],
      ),
    );
  }
}
