import 'package:flutter/material.dart';
import 'package:space_study_app/modal/spacemodal.dart';

import '../utils/global.dart';

class HomeProvider extends ChangeNotifier {
  List<SolarSystem> solarSystemList = [];
int seletcedindex=0;
  void fetchSolarData() {
    solarSystemList = solarSystem
        .map(
          (e) => SolarSystem.fromJson(e),
        )
        .toList();
    notifyListeners();
  }

  void changeIndex(int index)
  {
    seletcedindex=index;
    notifyListeners();
  }
}
