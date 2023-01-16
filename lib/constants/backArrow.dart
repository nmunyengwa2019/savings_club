import 'package:flutter/material.dart';

IconButton backArrow(BuildContext context) {
  return IconButton(
    onPressed: () {
      Navigator.pop(context);
    },
    icon: const Icon(Icons.arrow_back_ios),
    iconSize: 20.0,
  );
}
