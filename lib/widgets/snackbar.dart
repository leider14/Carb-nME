
import 'package:flutter/material.dart';

void showSnackBar({
  required BuildContext context,
  required String text,
  required String title,
}){
  
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        text,
        style:const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
      ),
      showCloseIcon: true,
      backgroundColor: Colors.purpleAccent,
    )
  );
}