import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShadowBlueButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const ShadowBlueButton({
    required this.text,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(1, 0),
            ),
          ],
          color: Colors.blue,
          shape: BoxShape.rectangle,
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
