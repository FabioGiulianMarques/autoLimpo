import 'package:flutter/material.dart';

class FormCliente extends StatelessWidget {
  const FormCliente({Key? key}) : super(key: key);

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
                maxLength: 10,
              ),
              const Text("RUA: "),
              TextFormField(
                maxLength: 40,
              ),
              const Text("No: "),
              TextFormField(
                maxLength: 20,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
              const Text("BAIRRO: "),
              TextFormField(
                maxLength: 40,
              ),
              const Text("REFERÊNCIA: "),
              TextFormField(
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

  void _salvar() {
    print("Salvando CLIENTE");
  }

  void _tratarLong(texto) {
    print(texto);
  }
}
