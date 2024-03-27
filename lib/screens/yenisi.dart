/*import 'package:flutter/cupertino.dart';
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Hesap Makinekesi"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 250, left: 50, right: 50),
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: ilkDeger,
              ),
              TextField(
                controller: ikinciDeger,
              ),
              Text('$sonuc'),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            sayiTopla();
                          },
                          child: Text("topla")),
                      ElevatedButton(
                          onPressed: () {
                            sayiCikar();
                          },
                          child: Text("çıkar")),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            sayiCarp();
                          },
                          child: Text("Çarp")),
                      ElevatedButton(
                          onPressed: () {
                            sayiBol();
                          },
                          child: Text(" Böl  ")),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
*/

// eskilerden olan: 
/*import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hesap Makinesi",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  const Iskele({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hesap Makinesi"),
      ),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  const AnaEkran({Key? key});

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  num sayi1 = 0, sayi2 = 0, sonuc = 0;

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  sayiTopla() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 + sayi2;
    });
  }

  sayiCikar() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 - sayi2;
    });
  }

  sayiCarp() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 * sayi2;
    });
  }

  sayiBol() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      if (sayi2 != 0) {
        sonuc = sayi1 / sayi2;
      } else {
        sonuc = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50.0),
      padding: EdgeInsets.all(5),
      child: Center(
        child: Column(
          children: <Widget>[
            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            ElevatedButton(onPressed: sayiTopla, child: Text("Topla")),
            ElevatedButton(onPressed: sayiCikar, child: Text("Çıkar")),
            ElevatedButton(onPressed: sayiCarp, child: Text("Çarp")),
            ElevatedButton(onPressed: sayiBol, child: Text("Böl")),
            Text("$sonuc"),
          ],
        ),
      ),
    );
  }
}
*/