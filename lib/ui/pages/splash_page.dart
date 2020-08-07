part of 'pages.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      context.bloc<PageBloc>().add(GoToWalkthroughPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/bg_splash.png"),
                        fit: BoxFit.cover)),
                child: Center(
                    child: Container(
                  width: 295.97,
                  height: 209,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/logo_autopay_splash.png"),
                          fit: BoxFit.cover)),
                )))));
  }
}
