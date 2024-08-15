import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Melendez Vertical Card',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> titles = [
    "",
    "",
    "Melendez",
    "",
    "",
  ];
  @override
  Widget build(BuildContext context) {
    final List<Widget> images = [
      Container(
        child: Column(
          children: const <Widget>[
            Image(
              fit: BoxFit.contain,
              height: 290,
              image: NetworkImage(
                "https://raw.githubusercontent.com/Eli-Devil-UnU/P6_Carrusel_Melendez/main/motos/Kawasaki_Ninja_H2r.jpg",
              ),
            ),
          ],
        ),
        decoration: const BoxDecoration(
          color: Color(0xff3cff00),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        child: Column(
          children: const <Widget>[
            Image(
              fit: BoxFit.contain,
              height: 290,
              image: NetworkImage(
                "https://raw.githubusercontent.com/Eli-Devil-UnU/P6_Carrusel_Melendez/main/motos/chopper.jpg",
              ),
            ),
          ],
        ),
        decoration: const BoxDecoration(
          color: Color(0xffff0000),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        child: Column(
          children: const <Widget>[
            Image(
              fit: BoxFit.contain,
              height: 290,
              image: NetworkImage(
                "https://raw.githubusercontent.com/Eli-Devil-UnU/P6_Carrusel_Melendez/main/motos/dm200.jpg",
              ),
            ),
          ],
        ),
        decoration: const BoxDecoration(
          color: Color(0xff38d45a),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        child: Column(
          children: const <Widget>[
            Image(
              fit: BoxFit.contain,
              height: 290,
              image: NetworkImage(
                "https://raw.githubusercontent.com/Eli-Devil-UnU/P6_Carrusel_Melendez/main/motos/mt09_2024.jpg",
              ),
            ),
          ],
        ),
        decoration: const BoxDecoration(
          color: Color(0xff14b0cb),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      Container(
        child: Column(
          children: const <Widget>[
            Image(
              fit: BoxFit.contain,
              height: 290,
              image: NetworkImage(
                "https://raw.githubusercontent.com/Eli-Devil-UnU/P6_Carrusel_Melendez/main/motos/rc200.jpg",
              ),
            ),
          ],
        ),
        decoration: const BoxDecoration(
          color: Color(0xff000000),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Melendez Vertical',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff5adaff),
      ),
      body: SafeArea(
        child: Expanded(
          child: Container(
            child: VerticalCardPager(
              textStyle: const TextStyle(
                  color: Color(0xff00d9ff), fontWeight: FontWeight.bold),
              titles: titles,
              images: images,
              onPageChanged: (page) {},
              align: ALIGN.CENTER,
              onSelectedItem: (index) {},
            ),
          ),
        ),
      ),
    );
  }
}
