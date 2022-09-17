import 'package:flutter/material.dart';
import 'package:memoria/theme.dart';
import 'package:memoria/widgets/logo.dart';
import 'package:memoria/widgets/recordes.dart';
import 'package:memoria/widgets/start_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Logo(),
          StartButton(title: 'Modo Normal', color: Colors.white, action: () {}),
          StartButton(
              title: 'Modo Insano', color: MememoriaTheme.color, action: () {}),
          const SizedBox(height: 60),
          const Recordes(),
        ],
      ),
    ));
  }
}
