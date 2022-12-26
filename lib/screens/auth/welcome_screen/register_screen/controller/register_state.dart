part of 'register_controller.dart';
class RegisterState extends Equatable {
  final Name name;
  final Email email;
  final Password password;
  final FormzStatus status;
  final String? errorMessage;

  const RegisterState({
    this.name = const Name.pure(),
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.status = const FormzStatus.pure(),
    this.errorMessage,
  });

  RegisterState copyWith({
    Name? name,
    Email? email,
    Password? password,
    FormzStatus? status,
    String? errorMessage,
  }) {
    return RegisterState(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [
        name,
        email,
        password,
        status,
      ];
}
