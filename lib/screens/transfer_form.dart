import 'package:alura_bank/components/edit.dart';
import 'package:alura_bank/models/transfer.dart';
import 'package:flutter/material.dart';

class TransferForm extends StatefulWidget {
  @override
  State<TransferForm> createState() => _TransferFormState();
}

class _TransferFormState extends State<TransferForm> {
  final TextEditingController _cotrollerAccountNumber = TextEditingController();

  final TextEditingController _controllerValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TranferForm')),
      body: SingleChildScrollView(
        child: Column(children: [
          //campo 1
          Edit(
              rotulo: "AccountNumber",
              dica: "0000",
              controller: _cotrollerAccountNumber),

          // campo 2
          Edit(
              rotulo: 'Value',
              dica: "000.0",
              controller: _controllerValue,
              icon: Icons.monetization_on),

          ElevatedButton(
            child: Text("Create"),
            onPressed: () {
              print("clicou em confirmar");
              _creatingTransfer(context);
            },
          ),
        ]),
      ),
    );
  }

  void _creatingTransfer(BuildContext context) {
    final int? accountNumber = int.tryParse(_cotrollerAccountNumber.text);
    final double? value = double.tryParse(_controllerValue.text);
    final transferenciaCriada = Transfer(accountNumber!, value!);
    debugPrint('$transferenciaCriada');
    print("Criando transferencia");
    print('$transferenciaCriada');
    Navigator.pop(context, transferenciaCriada);
  }
}
