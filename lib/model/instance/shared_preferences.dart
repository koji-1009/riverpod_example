import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// see [main()]
final sharedPreferenceProvider = Provider<SharedPreferences>(
  (_) => throw Exception('Provider was not initialized'),
);
