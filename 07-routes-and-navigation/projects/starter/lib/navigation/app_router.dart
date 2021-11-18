import 'package:flutter/material.dart';

import '../models/models.dart';
import '../screens/screens.dart';

// 1
class AppRouter extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  // 2
  @override
  final GlobalKey<NavigatorState> navigatorKey;

  // 3
  final AppStateManager appStateManager;
  // 4
  final GroceryManager groceryManager;
  // 5
  final ProfileManager profileManager;

  AppRouter({
    required this.appStateManager,
    required this.groceryManager,
    required this.profileManager,
  })
      : navigatorKey = GlobalKey<NavigatorState>() {
    // TODO: Add Listeners
  }

  // TODO: Dispose listeners

  // 6
  @override
  Widget build(BuildContext context) {
    // 7
    return Navigator(
      // 8
      key: navigatorKey,
      // TODO: Add onPopPage
      // 9
      pages: [
        // TODO: Add SplashScreen
        // TODO: Add LoginScreen
        // TODO: Add OnboardingScreen
        // TODO: Add Home
        // TODO: Create new item
        // TODO: Select GroceryItemScreen
        // TODO: Add Profile Screen
        // TODO: Add WebView Screen
      ],
    );
  }

  // TODO: Add _handlePopPage

  // 10
  @override
  Future<void> setNewRoutePath(configuration) async => null;
}
