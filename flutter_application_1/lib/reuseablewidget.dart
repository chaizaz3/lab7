import 'dart:html';

import 'package:flutter/material.dart';

class reuseablewidget extends StatelessWidget {
  final newchild;
  dynamic? Color;
  dynamic? width;
  final height;
  reuseablewidget(
      {required this.Color,
      required this.newchild,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: newchild);
  }
}
