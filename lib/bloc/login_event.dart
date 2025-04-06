abstract class LoginEvent {}

class LoginSubmittedEvent extends LoginEvent {
  final String email;
  final String password;

  LoginSubmittedEvent({required this.email, required this.password});
}

class ForgotPasswordEvent extends LoginEvent {}

class NavigateToSignUpEvent extends LoginEvent {}
