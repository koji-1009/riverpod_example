import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_example/model/repository/auth_repository.dart';

final authPresenterProvider = Provider(
  (ref) => AuthPresenter(
    repository: ref.watch(authRepositoryProvider),
  ),
);

class AuthPresenter {
  const AuthPresenter({
    required this.repository,
  });

  final AuthRepository repository;

  bool get isAuth => repository.isLogin;

  Future<void> signIn() async {
    await repository.signIn();
  }

  Future<void> signOut() async {
    await repository.signOut();
  }
}
