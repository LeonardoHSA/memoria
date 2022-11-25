import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:memoria/controllers/game_controller.dart';
import 'package:memoria/repositories/recordes_repository.dart';
import 'package:memoria/theme.dart';
import 'package:provider/provider.dart';
import 'home_page.dart';

void main() async {
  await Hive.initFlutter();

  runApp(MultiProvider(
    providers: [
      Provider<RecordesRepository>(create: (_) => RecordesRepository()),
      ProxyProvider<RecordesRepository, GameController>(
        update: (_, repo, __) => GameController(recordesRepository: repo),
      ),
    ],
    child: const MyApp(),
  ));
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

// Parou em 1:36
// link: https://www.youtube.com/watch?v=0l8H7hAu-2E&list=PL_wKlpKIC9vVOZxwQyNzuD1lL9cJgPiiE&index=5
