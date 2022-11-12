// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:memoria/theme.dart';
import 'package:memoria/responsive/app_responsive_ext.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double? w;
    double? h;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Image.asset(
            'images/logo.jpg',
            width: w?.wsp,
            height: h?.hsp,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: RichText(
              text: TextSpan(
                  text: 'Meme',
                  style:
                      DefaultTextStyle.of(context).style.copyWith(fontSize: 30),
                  children: const [
                TextSpan(
                    text: 'mória',
                    style: TextStyle(color: MememoriaTheme.color))
              ])),
        )
      ],
    );
  }
}
