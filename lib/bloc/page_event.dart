part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();
}

class GoToSplashPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToWalkthroughPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToLoginPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToForgotPassword1Page extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToForgotPassword2Page extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToForgotPassword3Page extends PageEvent {
  @override
  List<Object> get props => [];
}
