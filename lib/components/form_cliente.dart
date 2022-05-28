import 'package:flutter/material.dart';

import '../service/salva_api_service.dart';

class FormCliente extends StatelessWidget {
  final _controllerNome = TextEditingController();
  final _controllerRua = TextEditingController();
  final _controllerNo = TextEditingController();
  final _controllerBairro = TextEditingController();
  final _controllerReferencia = TextEditingController();
  FormCliente({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 10, color: Colors.black38),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      margin: const EdgeInsets.all(4),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("NOME: "),
              TextFormField(
                controller: _controllerNome,
                maxLength: 10,
              ),
              const Text("RUA: "),

              TextFormField(
                controller: _controllerRua,
                maxLength: 40,
              ),
              const Text("No: "),
              TextFormField(
                controller: _controllerNo, 
                maxLength: 20,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
              const Text("BAIRRO: "),
              TextFormField(
                controller: _controllerBairro,
                maxLength: 40,
              ),
              const Text("REFERÊNCIA: "),
              TextFormField(
                controller: _controllerReferencia,
                maxLength: 40,
              ),
  
              Center(
                child: ElevatedButton(
                  child: const Text("Salvar"),
                  onPressed: _salvar,
                  onLongPress: () => _tratarLong("Long pressed do Salvar"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _salvar() async {
    String nome = _controllerNome.text;
    String rua  = _controllerRua.text;
    String no   = _controllerNo.text;
    String bairro = _controllerBairro.text; 
    String referencia =  _controllerReferencia.text; 

    var salva = await SalvaAPIService.salvaDados(nome,rua,no,bairro,referencia);

    print("Salvando CLIENTE");
  }

  void _tratarLong(texto) {
    print(texto);
  }
}
