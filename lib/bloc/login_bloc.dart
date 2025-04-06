import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitialState());

  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginSubmittedEvent) {
      yield LoginLoadingState();
      await Future.delayed(Duration(seconds: 2));
      if (event.email == 'test@test.com' && event.password == 'password') {
        yield LoginSuccessState();
      } else {
        yield LoginFailureState('Invalid email or password');
      }
    } else if (event is ForgotPasswordEvent) {
      yield LoginFailureState('Forgot Password clicked');
    } else if (event is NavigateToSignUpEvent) {
      yield LoginFailureState('Navigate to Sign-Up clicked');
    }
  }
}