//ListView Simples
//Se quiser testar, alterar esse pelo main.dart.

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ex ListView',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  static const _path = "assets/images/";
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
        centerTitle: true,
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return ListView(
      children: [
        _minhaImagem("Echo Dot", "${_path}echo.jpg"),
        _minhaImagem("Smartphone", "${_path}smartphone.jpg"),
        _minhaImagem("SmartTV", "${_path}smarttv.jpg"),
        _minhaImagem("SmartWatch", "${_path}smartwatch.jpg")
      ],
    );
  }

  Widget _minhaImagem(nome, pathImage) {
    return Column(
      children: [
        Image.asset(
          pathImage,
          width: 200,
          height: 200,
        ),
        Text(
          "$nome",
          style: TextStyle(
            backgroundColor: Colors.blue,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
