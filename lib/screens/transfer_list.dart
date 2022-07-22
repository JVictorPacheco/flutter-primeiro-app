// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'package:alura_bank/screens/transfer_form.dart';
import 'package:flutter/material.dart';

import 'package:alura_bank/models/transfer.dart';

// ignore: use_key_in_widget_constructors
class TransferList extends StatefulWidget {
  final List<Transfer> _transfer = [];

  @override
  State<StatefulWidget> createState() => TransferListState();
}

class TransferListState extends State<TransferList> {
  @override
  Widget build(BuildContext context) {
    // widget._transfer.add(Transfer(100, 200.0));

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: Text('TransferList'),
      ),
      body: ListView.builder(
        itemCount: widget._transfer.length,
        itemBuilder: (context, indice) {
          final transfer = widget._transfer[indice];
          return TranferItem(transfer);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future<Transfer?> future = Navigator.push(
              context, MaterialPageRoute(builder: (context) => TransferForm()));
          future.then((transferenciaRecebida) {
            Future.delayed(Duration(seconds: 5), () {
              print("Chegou no then do future");
              print('$transferenciaRecebida');
              if (transferenciaRecebida != null) {
                setState(() => widget._transfer.add(transferenciaRecebida));
              }
            });
          });
        },
        // ignore: prefer_const_constructors
        child: Icon(Icons.add_circle_outline),
      ),
    );
  }
}

class TranferItem extends StatelessWidget {
  late final Transfer _transfer;

  TranferItem(this._transfer);

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Card(
          child: ListTile(
            leading: Icon(Icons.monetization_on_outlined),
            title: Text(_transfer.value.toString()),
            subtitle: Text(_transfer.accounNumber.toString()),
          ),
        ),
      ],
    );
  }
}
