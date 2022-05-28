//ListView com Builder

import 'package:flutter/material.dart';

import 'model/produto_item.dart';

import 'components/form_cliente.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AutoLimpo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  static const _path = "assets/images/";

  final List<ProdutoItem> itens = [
       ProdutoItem("${_path}HatchPeq.png", "Hatch Peq", 30.00),
       ProdutoItem("${_path}SedamGrande.png", "Sedam Médio", 45.00),
       ProdutoItem("${_path}SedamGrande.png", "Sedam Grande", 55.00),
       ProdutoItem("${_path}suv.jpeg", "SUV", 60.00),
       ProdutoItem("${_path}van.png", "VAN", 60.00),
  ];
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lavagem Externa"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: itens.length,
        itemBuilder: (context, index) {
          final produtoItem = itens[index];
          return ListTile(
            title: Row(
              children: [
                Image.asset(
                  produtoItem.caminhoImagem,
                  width: 100,
                  height: 100,
                ),
                Expanded(
                  child: Text(produtoItem.preco.toString() + ' '+ produtoItem.nome),
                ),
          
              ],
            ),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Detalhe(produtoItem.nome,produtoItem.preco))),
            
          );
        },
      ),
    );
  }
}
class Detalhe extends StatelessWidget {
  String nome;
  double preco;

  Detalhe(this.nome, this.preco);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(nome + ' ' + preco.toString() ),
          centerTitle: true,
        ),
        body: Center(
            child: FormCliente(),
           //   onPressed: () => Navigator.pop(context),
            ),
        );
    
  }
}
