import 'dart:async';

import 'package:bloc/bloc.dart';
// import 'package:autopay/models/models.dart';
import 'package:equatable/equatable.dart';

part 'page_event.dart';
part 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  PageBloc() : super(OnInitialPage());

  @override
  Stream<PageState> mapEventToState(
    PageEvent event,
  ) async* {
    if (event is GoToSplashPage) {
      yield OnSplashPage();
    } else if (event is GoToWalkthroughPage) {
      yield OnWalkthroughPage();
    } else if (event is GoToLoginPage) {
      yield OnLoginPage();
    } else if (event is GoToForgotPassword1Page) {
      yield OnForgotPassword1Page();
    } else if (event is GoToForgotPassword2Page) {
      yield OnForgotPassword2Page();
    } else if (event is GoToForgotPassword3Page) {
      yield OnForgotPassword3Page();
    }
  }
}
