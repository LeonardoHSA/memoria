import 'package:flutter/material.dart';
import 'package:memoria/pages/nivel_page.dart';
import 'package:memoria/theme.dart';
import 'package:memoria/widgets/logo.dart';
import 'package:memoria/widgets/recordes.dart';
import 'package:memoria/widgets/start_button.dart';

import 'constants.dart';

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
          StartButton(
              title: 'Modo Normal',
              color: Colors.white,
              action: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const NivelPage(modo: Modo.normal),
                    ),
                  )),
          StartButton(
              title: 'Modo Insano',
              color: MememoriaTheme.color,
              action: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const NivelPage(modo: Modo.insano),
                    ),
                  )),
          const SizedBox(height: 60),
          const Recordes(),
        ],
      ),
    ));
  }
}
