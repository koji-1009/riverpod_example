import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_example/app.dart';
import 'package:riverpod_example/model/instance/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  /// see https://github.com/rrousselGit/river_pod/issues/329#issuecomment-879099371
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    ),
  );

  final pref = await SharedPreferences.getInstance();

  runApp(
    ProviderScope(
      overrides: [
        /// provide SharedPreferences in a synchronous process
        sharedPreferenceProvider.overrideWithValue(pref),
      ],
      child: const App(),
    ),
  );
}
