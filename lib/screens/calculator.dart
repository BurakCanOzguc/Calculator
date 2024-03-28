import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hesap_makine_yeni/widgets/calculator_widget/button_widget.dart/button_widgets.dart';

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
  TextEditingController sonuc2 = TextEditingController();

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 40,
                  width: 70,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    controller: ilkDeger,
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 70,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    controller: islem2,
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 70,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    controller: ikinciDeger,
                  ),
                ),
                Text("="),
                SizedBox(
                  height: 40,
                  width: 70,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    controller: sonuc2,
                  ),
                ),
              ],
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
                  AmberButton(
                    text: "C",
                    onPressed: () {
                      setState(() {});
                    },
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
                  AmberButton(
                    text: "%",
                    onPressed: () {
                      setState(() {});
                    },
                  ),
                  AmberButton(
                    text: "/",
                    onPressed: () {
                      setState(() {});
                    },
                  ),
                  //1. sayı
                  ShadowBlueButton(
                    text: "1",
                    onPressed: () {
                      setState(() {
                        bir;
                      });
                    },
                  ),
                  BlueButton(
                    text: "2",
                    onPressed: () {
                      setState(() {
                        iki;
                      });
                    },
                  ),
                  BlueButton(
                    text: "3",
                    onPressed: () {
                      setState(() {
                        uc;
                      });
                    },
                  ),
                  //Çarpma
                  AmberButton(
                    text: "x",
                    onPressed: () {
                      setState(() {});
                    },
                  ),
                  BlueButton(
                    text: "4",
                    onPressed: () {
                      setState(() {
                        dort;
                      });
                    },
                  ),
                  BlueButton(
                    text: "5",
                    onPressed: () {
                      setState(() {
                        bes;
                      });
                    },
                  ),
                  BlueButton(
                    text: "6",
                    onPressed: () {
                      setState(() {
                        alti;
                      });
                    },
                  ),
                  //Çıkartma
                  AmberButton(
                    text: "-",
                    onPressed: () {
                      setState(() {});
                    },
                  ),
                  ShadowBlueButton(
                    text: "7",
                    onPressed: () {
                      setState(() {
                        yedi;
                      });
                    },
                  ),
                  BlueButton(
                    text: "8",
                    onPressed: () {
                      setState(() {
                        sekiz;
                      });
                    },
                  ),
                  BlueButton(
                    text: "9",
                    onPressed: () {
                      setState(() {
                        dokiz;
                      });
                    },
                  ),
                  //Toplama
                  AmberButton(
                    text: "+",
                    onPressed: () {
                      setState(() {});
                    },
                  ),
                  //+/-
                  ShadowBlueButton(
                    text: "+/-",
                    onPressed: () {
                      setState(() {});
                    },
                  ),
                  //Sıfır
                  ShadowBlueButton(
                    text: "0",
                    onPressed: () {
                      setState(() {
                        sifir;
                      });
                    },
                  ),
                  // Virgül
                  ShadowBlueButton(
                    text: ",",
                    onPressed: () {
                      setState(() {});
                    },
                  ),
                  //Eşittir
                  AmberButton(
                    text: "=",
                    onPressed: () {
                      setState(() {});
                    },
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
