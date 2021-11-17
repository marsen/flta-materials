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

  void initializeApp() {
    Timer(const Duration(microseconds: 2000), () {
      _initialized = true;
      notifyListeners();
    });
  }

  void login(String username, String password) {
    _loggedIn = true;
    notifyListeners();
  }

  void completeOnboarding() {
    _onboardingComplete = true;
    notifyListeners();
  }

  void goToTab(index) {
    _selectedTab = index;
    notifyListeners();
  }

  void goToRecipes() {
    _selectedTab = FooderlichTab.recipes;
    notifyListeners();
  }

  void logout() {
    // 12
    _loggedIn = false;
    _onboardingComplete = false;
    _initialized = false;
    _selectedTab = 0;

    // 13
    initializeApp();
    // 14
    notifyListeners();
  }
}
