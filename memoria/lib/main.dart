import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:memoria/theme.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jogo da memória',
      debugShowCheckedModeBanner: false,
      theme: MememoriaTheme.theme,
      home: const HomePage(),
    );
  }
}

// Parou no vídeo em 27:00
// link: https://www.youtube.com/watch?v=hU8ht030JUM&list=PL_wKlpKIC9vVOZxwQyNzuD1lL9cJgPiiE