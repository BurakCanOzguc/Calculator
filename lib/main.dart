import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hesap_makine_yeni/widgets/calculator_widget/button_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String islem = '+';

  num sayi1 = 0, sayi2 = 0, sonuc = 0;

  int bir = 1,
      iki = 2,
      uc = 3,
      dort = 4,
      bes = 5,
      alti = 6,
      yedi = 7,
      sekiz = 8,
      dokiz = 9,
      sifir = 0;

  sayiTopla() {
    setState(() {
      sayi1 = num.parse(ilkDeger.text);
      sayi2 = num.parse(ikinciDeger.text);
      sonuc = sayi1 + sayi2;
    });
  }

  sayiCikar() {
    setState(() {
      sayi1 = num.parse(ilkDeger.text);
      sayi2 = num.parse(ikinciDeger.text);
      sonuc = sayi1 - sayi2;
    });
  }

  sayiCarp() {
    setState(() {
      sayi1 = num.parse(ilkDeger.text);
      sayi2 = num.parse(ikinciDeger.text);
      sonuc = sayi1 * sayi2;
    });
  }

  sayiBol() {
    setState(() {
      sayi1 = num.parse(ilkDeger.text);
      sayi2 = num.parse(ikinciDeger.text);
      if (sayi2 != 0) {
        sonuc = sayi1 / sayi2;
      } else {
        sonuc = 0;
      }
    });
  }

  TextEditingController ilkDeger = TextEditingController();
  TextEditingController ikinciDeger = TextEditingController();
  TextEditingController islem2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height / 12;
    double deviceWidth = MediaQuery.of(context).size.width / 6;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Hesap Makinesi"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 50, right: 50),
        child: Column(
          children: [
            TextField(
              controller: ilkDeger,
            ),
            TextField(
              controller: islem2,
            ),
            TextField(
              controller: ikinciDeger,
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.count(
                childAspectRatio: (deviceWidth / deviceHeight),
                // reverse: en son elemanı en başa yazmayı sağlar

                // crossAxisCount: soldan sağa kaç tane eleman konulacağını belirtiyoruz.
                crossAxisCount: 4,

                // crossAxisSpacing: soldan sağa doğru sütunların arasındaki boşluk miktarı
                crossAxisSpacing: 1,

                // mainAxisSpacing: yukarıdan aşağı sütunlar arasındaki boşluk miktarı
                mainAxisSpacing: 1,
                // her bir elemanın çevresine verilen boşluk miktarı
                padding: const EdgeInsets.all(10),
                children: [
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(1, 0),
                      ),
                    ], color: Colors.amber, shape: BoxShape.rectangle),
                    alignment: Alignment.center,
                    child: const Text("C"),
                  ),
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(1, 0),
                      ),
                    ], color: Colors.amber, shape: BoxShape.rectangle),
                    alignment: Alignment.center,
                    child: const Icon(Icons.backspace),
                  ),
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(1, 0),
                      ),
                    ], color: Colors.amber, shape: BoxShape.rectangle),
                    alignment: Alignment.center,
                    child: const Text("%"),
                  ),
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(1, 0),
                      ),
                    ], color: Colors.amber, shape: BoxShape.rectangle),
                    alignment: Alignment.center,
                    child: const Text("/"),
                  ),
                  //1. sayı
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        bir;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ], color: Colors.blue, shape: BoxShape.rectangle),
                      alignment: Alignment.center,
                      child: const Text("1"),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue, shape: BoxShape.rectangle),
                    alignment: Alignment.center,
                    child: const Text("2"),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue, shape: BoxShape.rectangle),
                    alignment: Alignment.center,
                    child: const Text("3"),
                  ),
                  //Çarpma
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(1, 0),
                      ),
                    ], color: Colors.amber, shape: BoxShape.rectangle),
                    alignment: Alignment.center,
                    child: const Text("x"),
                  ),
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ], color: Colors.blue, shape: BoxShape.rectangle),
                    alignment: Alignment.center,
                    child: const Text("4"),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue, shape: BoxShape.rectangle),
                    alignment: Alignment.center,
                    child: const Text("5"),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue, shape: BoxShape.rectangle),
                    alignment: Alignment.center,
                    child: const Text("6"),
                  ),
                  //Çıkartma
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(1, 0),
                      ),
                    ], color: Colors.amber, shape: BoxShape.rectangle),
                    alignment: Alignment.center,
                    child: const Text("-"),
                  ),
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ], color: Colors.blue, shape: BoxShape.rectangle),
                    alignment: Alignment.center,
                    child: const Text("7"),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue, shape: BoxShape.rectangle),
                    alignment: Alignment.center,
                    child: const Text("8"),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue, shape: BoxShape.rectangle),
                    alignment: Alignment.center,
                    child: const Text("9"),
                  ),
                  //Toplama
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(1, 0),
                      ),
                    ], color: Colors.amber, shape: BoxShape.rectangle),
                    height: deviceHeight / 10,
                    width: deviceWidth / 6,
                    alignment: Alignment.center,
                    child: const Text("+"),
                  ),
                  //+/-
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ], color: Colors.blue, shape: BoxShape.rectangle),
                    alignment: Alignment.center,
                    child: const Text("+/-"),
                  ),
                  //Sıfır
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ], color: Colors.blue, shape: BoxShape.rectangle),
                    alignment: Alignment.center,
                    child: const Text("0"),
                  ),
                  // Virgül
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ], color: Colors.blue, shape: BoxShape.rectangle),
                    alignment: Alignment.center,
                    child: const Text(
                      ",",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  //Eşittir
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(1, 0),
                      ),
                    ], color: Colors.amber, shape: BoxShape.rectangle),
                    height: deviceHeight / 10,
                    width: deviceWidth / 6,
                    alignment: Alignment.center,
                    child: const Text("="),
                  ),
                  ShadowBlueButton(
                    text: "ds",
                    onPressed: () {
                      setState(() {
                        sayiTopla();
                      });
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
