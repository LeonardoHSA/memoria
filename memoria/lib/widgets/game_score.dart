import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:memoria/constants.dart';
import 'package:provider/provider.dart';

import '../controllers/game_controller.dart';

class GameScore extends StatelessWidget {
  final Modo modo;
  const GameScore({Key? key, required this.modo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<GameController>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(modo == Modo.insano
                ? Icons.my_location
                : Icons.touch_app_rounded),
            const SizedBox(width: 10),
            Observer(
              builder: (_) => Text(
                controller.score.toString(),
                style: const TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
        Image.asset('images/logo.jpg', width: 38, height: 60),
        TextButton(
          child: const Text(
            'Sair',
            style: TextStyle(fontSize: 18),
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
  }
}
