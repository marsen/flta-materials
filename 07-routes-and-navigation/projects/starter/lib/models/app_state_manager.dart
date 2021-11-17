import 'dart:async';
import 'dart:html';
import 'package:flutter/material.dart';

// 1
class FooderlichTab {
  static const int explore = 0;
  static const int recipes = 1;
  static const int toBuy = 2;
}

class AppStateManager extends ChangeNotifier {
  // 2
  bool _initialized = false;
  // 3
  bool _loggedIn = false;
  // 4
  bool _onboardingComplete = false;
  // 5
  int _selectedTab = FooderlichTab.explore;

  // 6
  bool get isInitialized => _initialized;
  bool get isLoggedIn => _loggedIn;
  bool get isOnboardingComplete => _onboardingComplete;
  int get getSelectedTab => _selectedTab;

void initializeApp(){
  Timer(const Duration(microseconds: 2000),(){
    _initialized = true;
    notifyListeners();
  });
}

// TODO: Add login
// TODO: Add completeOnboarding
// TODO: Add goToTab
// TODO: Add goToRecipes
// TODO: Add logout
}
