import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

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
            primaryColor: Color(0xffdb8c1c),
            accentColor: Color(0xfff05e1d),
            shadowColor: Color(0xff00a86c),
            cardColor: Color(0xffeaeaea),
            hintColor: Color(0xfff52d00),
            fontFamily: "Yekan",
          ),
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
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
