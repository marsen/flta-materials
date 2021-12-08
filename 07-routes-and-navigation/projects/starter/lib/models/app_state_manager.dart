import 'dart:async';
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

  // Add initializeApp
  // Sets a delayed timer for 2,000 milliseconds before executing the closure.
  // This sets how long the splash screen will display after the user launches
  // the app.
  // In a real app you would call the server to get feature flags or app
  // configurations.
  // This simulates this scenario.
  void initializeApp() {
    // 7
    Timer(const Duration(milliseconds: 2000), () {
      // 8
      _initialized = true;
      // 9
      notifyListeners();
    },
    );
  }

  //Add login
  // In a real scenario, you’d make an API request to log in.
  // In this case, however, you’re just using a mock.
  void login(String username, String password) {
    // 10
    _loggedIn = true;
    // 11
    notifyListeners();
  }
// TODO: Add completeOnboarding
// TODO: Add goToTab
// TODO: Add goToRecipes
// TODO: Add logout
}
