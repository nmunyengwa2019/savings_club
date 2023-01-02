// ignore: file_names
import 'package:flutter/material.dart';
// ignore: unnecessary_import
// import 'package:flutter/src/foundation/key.dart';

class LoadingProgress extends StatelessWidget {
  const LoadingProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
              child: CircularProgressIndicator(
            color: Colors.white,
            backgroundColor: Colors.grey,
          )),
        ),
      ),
    );
  }
}
