import 'package:flutter/widgets.dart';
import 'package:hesap_makine_yeni/widgets/calculator_widget/textfield_widget/ozellestirme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({super.key});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  TextEditingController ilkDeger = TextEditingController();
  TextEditingController ikinciDeger = TextEditingController();
  TextEditingController islemDeger = TextEditingController();
  TextEditingController sonucDeger = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OzellestirilmisTextField(
          controller: ilkDeger,
          yukseklik: 40,
          genislik: 70,
        ),
        OzellestirilmisTextField(
          controller: ikinciDeger,
          yukseklik: 40,
          genislik: 70,
        ),
        OzellestirilmisTextField(
          controller: islemDeger,
          yukseklik: 40,
          genislik: 70,
        ),
        Text("="),
        OzellestirilmisTextField(
          controller: sonucDeger,
          yukseklik: 40,
          genislik: 70,
        ),
      ],
    );
  }
}
