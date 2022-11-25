import 'package:hive/hive.dart';
import 'package:memoria/models/game_play.dart';
import 'package:mobx/mobx.dart';

import '../constants.dart';

part 'recordes_repository.g.dart';

class RecordesRepository = RecordesRepositoryBase with _$RecordesRepository;

abstract class RecordesRepositoryBase with Store {
  late final Box _recordes;
  late final GamePlay gamePlay;
  @observable
  Map recordesInsano = {};
  @observable
  Map recordesNormal = {};

  RecordesRepositoryBase() {
    _initRepository();
  }

  _initRepository() async {
    await _initDatabase();
    await loadRecordes();
  }

  _initDatabase() async {
    _recordes = await Hive.openBox('gameRecordes');
  }

  @action
  loadRecordes() {
    recordesNormal = _recordes.get(Modo.normal.toString()) ?? {};
    recordesInsano = _recordes.get(Modo.insano.toString()) ?? {};
  }

  updateRecordes({required GamePlay gamePlay, required int score}) {
    final key = gamePlay.modo.toString();

    if (gamePlay.modo == Modo.normal &&
        (recordesNormal[gamePlay.nivel] == null ||
            score < recordesNormal[gamePlay.nivel])) {
      recordesNormal[gamePlay.nivel] = score;
      _recordes.put(key, recordesNormal);
    } else if (gamePlay.modo == Modo.insano &&
        (recordesInsano[gamePlay.nivel] == null ||
            score > recordesInsano[gamePlay.nivel])) {
      recordesInsano[gamePlay.nivel] = score;
      _recordes.put(key, recordesInsano);
    }
  }
}
