import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
  num sayi1 = 0, sayi2 = 0, sonuc = 0;

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

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Hesap Makinesi"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 250, left: 50, right: 50),
        child: Column(
          children: [
            Text('$sonuc'),
            Expanded(
              child: GridView.count(
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
                    height: deviceHeight / 10,
                    width: deviceWidth / 6,
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
                    height: deviceHeight / 10,
                    width: deviceWidth / 6,
                    alignment: Alignment.center,
                    child: const Text("1"),
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
                    height: deviceHeight / 10,
                    width: deviceWidth / 6,
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
                    height: deviceHeight / 10,
                    width: deviceWidth / 6,
                    alignment: Alignment.center,
                    child: const Text("/"),
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
                    height: deviceHeight / 10,
                    width: deviceWidth / 6,
                    alignment: Alignment.center,
                    child: const Text("1"),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue, shape: BoxShape.rectangle),
                    height: deviceHeight / 10,
                    width: deviceWidth / 6,
                    alignment: Alignment.center,
                    child: const Text("2"),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue, shape: BoxShape.rectangle),
                    height: deviceHeight / 10,
                    width: deviceWidth / 6,
                    alignment: Alignment.center,
                    child: const Text("3"),
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
                    height: deviceHeight / 10,
                    width: deviceWidth / 6,
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
                    height: deviceHeight / 10,
                    width: deviceWidth / 6,
                    alignment: Alignment.center,
                    child: const Text("4"),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue, shape: BoxShape.rectangle),
                    height: deviceHeight / 10,
                    width: deviceWidth / 6,
                    alignment: Alignment.center,
                    child: const Text("5"),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue, shape: BoxShape.rectangle),
                    height: deviceHeight / 10,
                    width: deviceWidth / 6,
                    alignment: Alignment.center,
                    child: const Text("6"),
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
                    height: deviceHeight / 10,
                    width: deviceWidth / 6,
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
                    height: deviceHeight / 10,
                    width: deviceWidth / 6,
                    alignment: Alignment.center,
                    child: const Text("7"),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue, shape: BoxShape.rectangle),
                    height: deviceHeight / 10,
                    width: deviceWidth / 6,
                    alignment: Alignment.center,
                    child: const Text("8"),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue, shape: BoxShape.rectangle),
                    height: deviceHeight / 10,
                    width: deviceWidth / 6,
                    alignment: Alignment.center,
                    child: const Text("9"),
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
                    height: deviceHeight / 10,
                    width: deviceWidth / 6,
                    alignment: Alignment.center,
                    child: const Text("+"),
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
                    height: deviceHeight / 10,
                    width: deviceWidth / 6,
                    alignment: Alignment.center,
                    child: const Text("0"),
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
                    height: deviceHeight / 10,
                    width: deviceWidth / 6,
                    alignment: Alignment.center,
                    child: const Text("="),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
