import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_example/app.dart';

void main() {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
