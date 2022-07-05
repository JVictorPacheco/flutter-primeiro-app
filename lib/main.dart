import 'package:alura_bank/screens/transfer_form.dart';
import 'package:alura_bank/screens/transfer_list.dart';
import 'package:flutter/material.dart';

void main() => runApp(AluraBank());

class AluraBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.greenAccent,
      ),
      home: TransferList(),
    );
  }
}
