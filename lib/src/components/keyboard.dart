import 'package:calculator/src/components/button.dart';
import 'package:calculator/src/components/button_row.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) onPressed;

  const Keyboard({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: [
          ButtonRow(buttons: [
            Button(text: 'AC', buttonBig: true, isButtonDark: true, onPressed: onPressed,),
            Button(text: '%', isButtonDark: true, onPressed: onPressed,),
            Button(text: '/', isButtonOperation: true, onPressed: onPressed,)
          ]),
          const SizedBox(height: 1,),
          ButtonRow(buttons: [
            Button(text: '7', onPressed: onPressed,),
            Button(text: '8', onPressed: onPressed,),
            Button(text: '9', onPressed: onPressed,),
            Button(text: 'x', isButtonOperation: true, onPressed: onPressed,),
          ]),
          const SizedBox(height: 1,),
          ButtonRow(buttons: [
            Button(text: '4', onPressed: onPressed,),
            Button(text: '5', onPressed: onPressed,),
            Button(text: '6', onPressed: onPressed,),
            Button(text: '-', isButtonOperation: true, onPressed: onPressed,),
          ]),
          const SizedBox(height: 1,),
          ButtonRow(buttons: [
            Button(text: '1', onPressed: onPressed,),
            Button(text: '2', onPressed: onPressed,),
            Button(text: '3', onPressed: onPressed,),
            Button(text: '+', isButtonOperation: true, onPressed: onPressed,),
          ]),
          const SizedBox(height: 1,),
          ButtonRow(buttons: [
            Button(text: '0', buttonBig: true, onPressed: onPressed,),
            Button(text: '.', onPressed: onPressed,),
            Button(text: '=', isButtonOperation: true, onPressed: onPressed,),
          ]),
        ],
      ),
    );
  }
}
