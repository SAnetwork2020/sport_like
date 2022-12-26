import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_validators/form_validators.dart';
part 'register_state.dart';

final registerProvider =
    StateNotifierProvider.autoDispose<RegisterController, RegisterState>(
  (ref) => RegisterController(),
);

class RegisterController extends StateNotifier<RegisterState> {
  RegisterController()
      : super(
          const RegisterState(),
        );

  void onNameChange(String value) {
    final name = Name.dirty(value);
    state = state.copyWith(
      name: name,
      status: Formz.validate(
        [
          name,
          state.email,
          state.password,
        ],
      ),
    );
  }

  void onEmailChange(String value) {
    final email = Email.dirty(value);
    state = state.copyWith(
      email: email,
      status: Formz.validate(
        [
          email,
          state.name,
          state.password,
        ],
      ),
    );
  }

  void onPasswordChange(String value) {
    final password = Password.dirty(value);
    state = state.copyWith(
      password: password,
      status: Formz.validate(
        [
          password,
          state.email,
          state.name,
        ],
      ),
    );
  }

  void signUpWithEmailAndPassword() async {
    if (!state.status.isValidated) return;
    print("Sign Out");
  }
}
