import 'package:flutter/material.dart';
import 'package:option_car/screens/homepage.dart';
// import 'package:introduction_screen/introduction_screen.dart';

// import './homepage.dart';
// import './login.dart';
// import './profileMenu.dart';
import './splash.dart';
import './welcome.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Init.instance.initialize(),
      builder: (context, AsyncSnapshot snapshot) {
        // if (snapshot.connectionState == ConnectionState.waiting) {
        //   return MaterialApp(
        //       home: SplashScreen(), debugShowCheckedModeBanner: false);
        // } else {
        return MaterialApp(
          theme: ThemeData(
              primaryColor: Colors.red, accentColor: Colors.yellowAccent),
          debugShowCheckedModeBanner: false,
          // home: WelcomeScreen(),
          home: HomePage(),
        );
        // }
      },
    );
  }
}

class Init {
  Init._();
  static final instance = Init._();

  Future initialize() async {
    await Future.delayed(Duration(seconds: 3));
  }
}
