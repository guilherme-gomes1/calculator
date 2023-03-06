import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const dark = Color.fromRGBO(82, 82, 82, 1);
  static const defaultColor = Color.fromRGBO(112, 112, 112, 1);
  static const operation = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool? buttonBig;
  final bool? isButtonOperation;
  final bool? isButtonDark;
  final void Function(String) onPressed;

  const Button(
      {Key? key,
      required this.text,
      this.buttonBig = false,
      this.isButtonOperation = false,
      this.isButtonDark = false, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: buttonBig! ? 2 : 1,
      child: ElevatedButton(
        onPressed: () => onPressed(text),
        style: ElevatedButton.styleFrom(
          primary: isButtonOperation!
              ? operation
              : isButtonDark!
                  ? dark
                  : defaultColor,
        ),
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.w200),
        ),
      ),
    );
  }
}
