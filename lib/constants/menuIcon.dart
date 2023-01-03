import 'package:flutter/material.dart';
import 'package:savings_club/constants/constants.dart';

Container menuIcon() {
  return Container(
    height: 12,
    child: Column(
      children: [
        Icon(
          Icons.message,
          size: 20,
          color: bgAppbar,
        )
      ],
    ),
  );
}
