import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_example/model/repository/preferences_prepository.dart';

final authRepositoryProvider = Provider(
  (ref) => AuthRepository(
    repository: ref.watch(preferencesRepositoryProvider),
  ),
);

class AuthRepository {
  AuthRepository({
    required this.repository,
  }) : super();

  final PreferencesRepository repository;

  bool get isLogin => repository.isLogin;

  Future<void> signIn() async {
    await repository.loginState(true);
  }

  Future<void> signOut() async {
    await repository.loginState(false);
  }
}
