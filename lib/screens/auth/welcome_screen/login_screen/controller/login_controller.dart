import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_validators/form_validators.dart';
import 'package:sport_like/auth_repository/authentication_repository.dart';
part 'login_state.dart';

class SignInController extends StateNotifier<LoginState> {
  final AuthenticationRepository _authenticationRepository;
  SignInController(this._authenticationRepository) : super(const LoginState());

  void onEmailChange(String value) {
    final email = Email.dirty(value);
    state = state.copyWith(
      email: email,
      status: Formz.validate([email, state.password]),
    );
  }
}
