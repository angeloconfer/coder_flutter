import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleContoller = TextEditingController();
  final valueContoller = TextEditingController();
  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: titleContoller,
              decoration: InputDecoration(labelText: 'Título'),
            ),
            TextField(
              controller: valueContoller,
              decoration: InputDecoration(
                labelText: 'Valor (R\$)',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text('Nova transação'),
                  textColor: Colors.purple,
                  onPressed: () {
                    final title = titleContoller.text;
                    final value = double.tryParse(valueContoller.text) ?? 0.0;
                    onSubmit(title, value);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
