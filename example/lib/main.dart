import 'package:flutter/material.dart';
import 'package:image_gradient/image_gradient.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<Gradient> exampleGradients;
  int activeGradient = 0;

  @override
  void initState() {
    super.initState();
    exampleGradients = [
      const RadialGradient(colors: [Colors.white, Colors.white]),
      const RadialGradient(colors: [Colors.blue, Colors.cyanAccent]),
      const RadialGradient(colors: [Colors.deepOrange, Colors.purpleAccent]),
      const RadialGradient(colors: [Colors.yellow, Colors.pinkAccent]),
      const LinearGradient(colors: [Colors.yellow, Colors.pinkAccent]),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children:
                  List.generate(exampleGradients.length, buildGradientButton),
            ),
            Expanded(child: ImageGradient(
              image: Image.asset("assets/light.png"),
              gradient: exampleGradients[activeGradient],
            ))
          ],
        ),
      ),
    );
  }

  Widget buildGradientButton(int index) {
    return InkWell(
        onTap: () {
          setState(() {
            activeGradient = index;
          });
        },
        child: Container(
          width: 50,
          height: 50,
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              gradient: exampleGradients[index],
              border: Border.all(color: Colors.grey)),
        )
    );
  }
}
