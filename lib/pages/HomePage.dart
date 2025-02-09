import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Widgets/AppBarWidget.dart';
import 'package:food_app/Widgets/CategoriesWidget.dart';
import 'package:food_app/Widgets/DrawerWidget.dart';
import 'package:food_app/Widgets/NewestItemswidget.dart';
import 'package:food_app/Widgets/Popularitemswidget.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //Custom App Bar widget
          AppBarWidget(),

          //Search
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ]),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.search,
                      color: Colors.red,
                    ),
                    Container(
                        height: 50,
                        width: 300,
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "what would you like to have?",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                     ),
                      Icon(Icons.filter_list),
                  ],
                ),
              ),
            ),
          ),

          // category
          Padding(padding: EdgeInsets.only(top: 20, left:10),
          child: Text(
            "Categories",
            style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20,
            ),
          ),
          ),

          //category widget
          CategoriesWidget(),

          //popular Items
          Padding(padding: EdgeInsets.only(top: 20, left:10),
          child: Text(
            "Popular",
            style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20,
            ),
          ),
          ),

          //Popular Item widget
          Popularitemswidget(),

          //NewList items

          Padding(padding: EdgeInsets.only(top: 20, left:10),
          child: Text(
            "Newest",
            style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20,
            ),
          ),
          ),

          //Newest item widget
          Newestitemswidget(),
          
        ],
      ),

      drawer: Drawerwidget(),
      floatingActionButton: Container(
        decoration: 
          BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 10,
          offset: Offset(0, 3),
        )
        ]),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(CupertinoIcons.cart, 
          size:28,
          color: Colors.red,
          ),
          backgroundColor: Colors.white,
        
          ),
      ),
    );
  }
}
