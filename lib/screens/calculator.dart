import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hesap_makine_yeni/widgets/calculator_widget/button_widget.dart/button_widgets.dart';
import 'package:hesap_makine_yeni/widgets/calculator_widget/textfield_widget/textfields.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String islem = '';

  double sayi1 = 0, sayi2 = 0, sonuc = 0;

  TextEditingController ilkDeger = TextEditingController();
  TextEditingController ikinciDeger = TextEditingController();
  TextEditingController islemDeger = TextEditingController();
  TextEditingController sonucDeger = TextEditingController();
  int bir = 1,
      iki = 2,
      uc = 3,
      dort = 4,
      bes = 5,
      alti = 6,
      yedi = 7,
      sekiz = 8,
      dokiz = 9;

  void hesapla() {
    setState(() {
      sayi1 = double.parse(ilkDeger.text);
      sayi2 = double.parse(ikinciDeger.text);
      if (islem == '+') {
        sonuc = sayi1 + sayi2;
      } else if (islem == '-') {
        sonuc = sayi1 - sayi2;
      } else if (islem == 'x') {
        sonuc = sayi1 * sayi2;
      } else if (islem == '/') {
        if (sayi2 != 0) {
          sonuc = sayi1 / sayi2;
        } else {
          sonuc = 0;
        }
      } else if (islem == '%') {
        sonuc = sayi1 % sayi2;
      }
      sonucDeger.text = sonuc.toString();
    });
  }

  void sayiTopla() {
    setState(() {
      try {
        sayi1 = double.parse(ilkDeger.text);
      } on FormatException catch (e) {
        //hata döndür
      }
      sayi2 = double.parse(ikinciDeger.text);
      sonuc = sayi1 + sayi2;
      islem = '+';
      islemDeger.text = '=';
      sonucDeger.text = sonuc.toString();
    });
  }

  void sayiCikar() {
    setState(() {
      sayi1 = double.parse(ilkDeger.text);
      sayi2 = double.parse(ikinciDeger.text);
      sonuc = sayi1 - sayi2;
      islem = '-';
      islemDeger.text = '=';
      sonucDeger.text = sonuc.toString();
    });
  }

  void sayiCarp() {
    setState(() {
      sayi1 = double.parse(ilkDeger.text);
      sayi2 = double.parse(ikinciDeger.text);
      sonuc = sayi1 * sayi2;
      islem = 'x';
      islemDeger.text = '=';
      sonucDeger.text = sonuc.toString();
    });
  }

  void sayiBol() {
    setState(() {
      sayi1 = double.parse(ilkDeger.text);
      sayi2 = double.parse(ikinciDeger.text);
      if (sayi2 != 0) {
        sonuc = sayi1 / sayi2;
      } else {
        sonuc = 0;
      }
      islem = '/';
      islemDeger.text = '=';
      sonucDeger.text = sonuc.toString();
    });
  }

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
            const MyTextField(),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.count(
                childAspectRatio: (deviceWidth / deviceHeight),
                crossAxisCount: 4,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
                padding: const EdgeInsets.all(10),
                children: [
                  AmberButton(
                    text: "C",
                    onPressed: () {
                      setState(() {
                        ilkDeger.clear();
                        ikinciDeger.clear();
                        islemDeger.clear();
                        sonucDeger.clear();
                      });
                    },
                  ),
                  AmberButton(
                    text: "CE",
                    onPressed: () {
                      setState(() {});
                    },
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
                      setState(() {
                        sayiBol();
                      });
                    },
                  ),
                  ShadowBlueButton(
                    text: "1",
                    onPressed: () {
                      setState(() {
                        if (ilkDeger.text == '') {
                          ilkDeger.text = '1';
                        } else {
                          ikinciDeger.text = '1';
                        }
                      });
                    },
                  ),
                  BlueButton(
                    text: "2",
                    onPressed: () {
                      setState(() {
                        if (ilkDeger.text == '') {
                          ilkDeger.text = '2';
                        } else {
                          ikinciDeger.text = '2';
                        }
                      });
                    },
                  ),
                  BlueButton(
                    text: "3",
                    onPressed: () {
                      setState(() {
                        if (ilkDeger.text == '') {
                          ilkDeger.text = '3';
                        } else {
                          ikinciDeger.text = '3';
                        }
                      });
                    },
                  ),
                  AmberButton(
                    text: "x",
                    onPressed: () {
                      setState(() {
                        sayiCarp();
                      });
                    },
                  ),
                  ShadowBlueButton(
                    text: "4",
                    onPressed: () {
                      setState(() {
                        if (ilkDeger.text == '') {
                          ilkDeger.text = '4';
                        } else {
                          ikinciDeger.text = '4';
                        }
                      });
                    },
                  ),
                  BlueButton(
                    text: "5",
                    onPressed: () {
                      setState(() {
                        if (ilkDeger.text == '') {
                          ilkDeger.text = '5';
                        } else {
                          ikinciDeger.text = '5';
                        }
                      });
                    },
                  ),
                  BlueButton(
                    text: "6",
                    onPressed: () {
                      setState(() {
                        if (ilkDeger.text == '') {
                          ilkDeger.text = '6';
                        } else {
                          ikinciDeger.text = '6';
                        }
                      });
                    },
                  ),
                  AmberButton(
                    text: "-",
                    onPressed: () {
                      setState(() {
                        sayiCikar();
                      });
                    },
                  ),
                  ShadowBlueButton(
                    text: "7",
                    onPressed: () {
                      setState(() {
                        if (ilkDeger.text == '') {
                          ilkDeger.text = '7';
                        } else {
                          ikinciDeger.text = '7';
                        }
                      });
                    },
                  ),
                  BlueButton(
                    text: "8",
                    onPressed: () {
                      setState(() {
                        if (ilkDeger.text == '') {
                          ilkDeger.text = '8';
                        } else {
                          ikinciDeger.text = '8';
                        }
                      });
                    },
                  ),
                  BlueButton(
                    text: "9",
                    onPressed: () {
                      setState(() {
                        if (ilkDeger.text == '') {
                          ilkDeger.text = '9';
                        } else {
                          ikinciDeger.text = '9';
                        }
                      });
                    },
                  ),
                  AmberButton(
                    text: "+",
                    onPressed: () {
                      setState(() {
                        sayiTopla();
                      });
                    },
                  ),
                  ShadowBlueButton(
                    text: "+/-",
                    onPressed: () {
                      setState(() {});
                    },
                  ),
                  ShadowBlueButton(
                    text: "0",
                    onPressed: () {
                      setState(() {
                        if (ilkDeger.text == '') {
                          ilkDeger.text = '0';
                        } else {
                          ikinciDeger.text = '0';
                        }
                      });
                    },
                  ),
                  ShadowBlueButton(
                    text: ",",
                    onPressed: () {
                      setState(() {});
                    },
                  ),
                  AmberButton(
                    text: "=",
                    onPressed: () {
                      setState(() {
                        hesapla();
                        sonucDeger.text = '= ' + sonucDeger.text;
                      });
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
