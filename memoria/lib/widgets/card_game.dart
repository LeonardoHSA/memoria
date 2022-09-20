import 'package:flutter/material.dart';
import 'package:memoria/theme.dart';

import '../constants.dart';

class CardGame extends StatefulWidget {
  final Modo modo;
  final int opcao;

  const CardGame({
    Key? key,
    required this.modo,
    required this.opcao,
  }) : super(key: key);

  @override
  State<CardGame> createState() => _CardGameState();
}

class _CardGameState extends State<CardGame> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color:
              widget.modo == Modo.normal ? Colors.white : MememoriaTheme.color,
          width: 2,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: widget.modo == Modo.normal
              ? const AssetImage('images/logo.jpg')
              : const AssetImage('images/fudeu.jpg'),
        ),
      ),
    );
  }
}
