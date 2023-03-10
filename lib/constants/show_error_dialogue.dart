

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

showErrorMessage(BuildContext context,String title,String message,){
 return AwesomeDialog(
    context: context,
    dialogType: DialogType.error,
    animType: AnimType.bottomSlide,
    headerAnimationLoop: false,
    title: title,
    desc:message,
    btnCancelText: "Cancel",
    btnOkIcon: Icons.cancel,
    btnCancelOnPress: (){
    },
    btnOkColor: Colors.indigo,
  ).show();
}

confirmDialog(BuildContext context,String title,String message,Function submitFunction){
  return AwesomeDialog(
    context: context,
    dialogType: DialogType.error,
    animType: AnimType.rightSlide,
    headerAnimationLoop: false,
    title: title,
    desc:message,
    btnOkText: "Submit",
    btnOkOnPress: (){
      submitFunction();
    },
    btnCancelText: "Cancel",
    btnOkIcon: Icons.cancel,
    btnCancelOnPress: (){

    },
    btnOkColor: Colors.indigo,
  ).show();
}