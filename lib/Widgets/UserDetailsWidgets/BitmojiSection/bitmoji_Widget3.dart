import 'package:flutter/material.dart';
import 'bitmojiWidget_Icon.dart';
import 'bitmojiWidget_Row.dart';
import 'bitmojiWidget_text.dart';

Widget bitmojiWidget3() {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15, top: 0),
    child: Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
        boxShadow: [
          BoxShadow(
              color: Colors.black38,
              offset: Offset(0, 2),
              blurRadius: 1,
              spreadRadius: 1),
        ],
      ),
      child: Row(
        children: [
          Row(
            children: [
              bitmojiIcon(Icons.supervised_user_circle),
              bitmojiText2("Select Selfie")
            ],
          ),
          Spacer(),
          bitmojiRow(false)
        ],
      ),
    ),
  );
}
