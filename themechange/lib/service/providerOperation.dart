
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProviderOperation extends ChangeNotifier {
  
  String currentTheme = 'system';

  //  theme mode get method
   ThemeMode get themeMode {
    if (currentTheme == 'dark') {
      return ThemeMode.dark;
    } else if(currentTheme=='light'){
      return ThemeMode.light;
    }else {
      return ThemeMode.system;
    }
   }

  //  change theme method
  changetheme(String theme) async {
    final SharedPreferences _pref = 
    await SharedPreferences.getInstance();
    await _pref.setString('theme', theme);
    currentTheme = theme;
    notifyListeners();
  }
  // initialize preference
  inittheme() async{
    final SharedPreferences _pref = await SharedPreferences.getInstance();
    currentTheme = await _pref.getString('theme')??'system';
    notifyListeners();
  }
}