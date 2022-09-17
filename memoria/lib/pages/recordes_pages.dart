import 'package:flutter/material.dart';

class RecordesPage extends StatelessWidget {
  final Modo modo;
  final List<String> recs = ['Modo', 'Nível 8', 'Nível 10', 'Nível 12'];

  const RecordesPage({Key? key, required this.modo}) : super(key: key);

  getModo() {
    return modo == Modo.normal ? 'Normal' : 'Mememória';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
