import 'package:flutter/material.dart';
import 'package:memoria/theme.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Image.asset(
            'images/logo.jpg',
            width: 80,
            height: 125,
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
