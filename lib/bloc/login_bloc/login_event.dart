part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {}

class Login extends LoginEvent {}

class LogOut extends LoginEvent {}
