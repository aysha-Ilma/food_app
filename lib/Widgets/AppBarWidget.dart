import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:food_app/Widgets/AppBarWidget.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
      vertical: 15,
      horizontal: 15,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
          InkWell(
            onTap:() {},
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(CupertinoIcons.bars),
            ),
          ),
      ]),
    );
  }
}