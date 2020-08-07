part of 'pages.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseUser firebaseUser = Provider.of<FirebaseUser>(context);

    if (firebaseUser == null) {
      if (!(prevPageEvent is GoToSplashPage)) {
        prevPageEvent = GoToSplashPage();
        context.bloc<PageBloc>().add(prevPageEvent);
      }
    } else {
      if (!(prevPageEvent is GoToLoginPage)) {
        context.bloc<UserBloc>().add(LoadUser(firebaseUser.uid));

        prevPageEvent = GoToLoginPage();
        context.bloc<PageBloc>().add(prevPageEvent);
      }
    }

    return BlocBuilder<PageBloc, PageState>(
        builder: (_, pageState) => (pageState is OnSplashPage)
            ? SplashPage()
            : (pageState is OnWalkthroughPage)
                ? WalkthroughPage()
                : (pageState is OnLoginPage)
                    ? LoginPage()
                    : (pageState is OnForgotPassword1Page)
                        ? ForgotPassword1Page()
                        : (pageState is OnForgotPassword2Page)
                            ? ForgotPassword2Page()
                            : ForgotPassword3Page());
  }
}
