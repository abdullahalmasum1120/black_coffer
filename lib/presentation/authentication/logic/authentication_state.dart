part of 'authentication_bloc.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();
}

class AuthInitialState extends AuthenticationState {
  @override
  List<Object> get props => [];
}

class OtpSendingState extends AuthenticationState {
  @override
  List<Object> get props => [];
}

class OtpSentState extends AuthenticationState {
  final String verificationId;

  const OtpSentState({required this.verificationId});

  @override
  List<Object> get props => [verificationId];
}

class OtpVerifyingState extends AuthenticationState {
  @override
  List<Object> get props => [];
}

class OtpVerifiedState extends AuthenticationState {
  @override
  List<Object> get props => [];
}

class OtpExceptionState extends AuthenticationState {
  final Exception exception;

  const OtpExceptionState({required this.exception});

  @override
  List<Object> get props => [exception];
}