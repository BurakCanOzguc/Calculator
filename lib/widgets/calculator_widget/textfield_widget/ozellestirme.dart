import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OzellestirilmisTextField extends StatelessWidget {
  final TextEditingController controller;
  final double yukseklik;
  final double genislik;

  const OzellestirilmisTextField({
    Key? key,
    required this.controller,
    required this.yukseklik,
    required this.genislik,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: yukseklik,
      width: genislik,
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        controller: controller,
      ),
    );
  }
}
