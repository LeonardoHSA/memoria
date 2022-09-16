import 'package:flutter/material.dart';
import 'package:memoria/theme.dart';

class StartButton extends StatefulWidget {
  final String title;
  final Color color;
  final Function action;

  const StartButton({
    Key? key,
    required this.title,
    required this.color,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 24),
        child: OutlinedButton(
          style: MememoriaTheme.outlineButtonStyle(color: color),
          onPressed: () => action(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 20),
              )
            ],
          ),
        ));
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
