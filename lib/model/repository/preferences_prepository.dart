import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_example/model/instance/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

final preferencesRepositoryProvider = ChangeNotifierProvider(
  (ref) => PreferencesRepository(
    preferences: ref.watch(sharedPreferenceProvider),
  ),
);

class _Key {
  static const login = "login";
}

class PreferencesRepository extends ChangeNotifier {
  PreferencesRepository({
    required this.preferences,
  }) : super();

  final SharedPreferences preferences;

  bool get isLogin => preferences.getBool(_Key.login) ?? false;

  Future<void> loginState(bool state) async {
    preferences.setBool(_Key.login, state);
    notifyListeners();
  }
}
