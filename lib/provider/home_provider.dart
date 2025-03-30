import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:space_study_app/modal/spacemodal.dart';

import '../utils/global.dart';

class HomeProvider extends ChangeNotifier {
  List<SolarSystem> solarSystemList = [];
  int seletcedindex = 0;
  bool isLogged = false;

  bool get isLoggedIn => isLogged;

  void fetchSolarData() {
    solarSystemList = solarSystem
        .map(
          (e) => SolarSystem.fromJson(e),
        )
        .toList();
    notifyListeners();
  }
  HomeProvider()
  {
    _loadUserData();
  }

  void changeIndex(int index) {
    seletcedindex = index;
    notifyListeners();
  }

  Future<void> login(var value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('login', value);
    notifyListeners();
  }

  Future<void> _loadUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isLogged = prefs.getBool('login') ?? false;
    notifyListeners();
  }
}
