import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
  //constructur
  const StyledText({super.key});

  //widgets
  @override
  Widget build(context){
    return Text(
              'Halo Dunia',
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
             ),
            );
  }
}