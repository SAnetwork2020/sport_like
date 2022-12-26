import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sport_like/auth_repository/auth_repo_provider.dart';
import 'package:sport_like/auth_repository/authentication_repository.dart';

import 'user_model.dart';

part 'authentication_state.dart';

final authProvider = StateNotifierProvider<AuthController, AuthenticationState>(
  (ref) => AuthController(
    ref.watch(authRepoProvider),
  ),
);

class AuthController extends StateNotifier<AuthenticationState> {
  final AuthenticationRepository _authRepository;
  late final StreamSubscription _streamSubscription;

  AuthController(this._authRepository)
      : super(const AuthenticationState.unathenticated()) {
    _streamSubscription =
        _authRepository.user.listen((user) => _onUserChanged(user));
  }

  void _onUserChanged(AuthUser user) {
    if (user.isEmpty) {
      state = const AuthenticationState.unathenticated();
    } else {
      state = AuthenticationState.authenticated(user);
    }
  }

  void onSignOut() {
    _authRepository.signOut();
  }

  @override
  void dispose() {
    _streamSubscription.cancel();
    super.dispose();
  }
}
