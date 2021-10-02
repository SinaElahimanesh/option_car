import 'package:flutter/material.dart';
import 'package:option_car/screens/drawer_screen.dart';
import 'package:provider/provider.dart';

import './providers/option_provider.dart';
import './screens/home_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return
    // FutureBuilder(
    //   future: Init.instance.initialize(),
    //   builder: (context, AsyncSnapshot snapshot) {
    // if (snapshot.connectionState == ConnectionState.waiting) {
    //   return MaterialApp(
    //       home: SplashScreen(), debugShowCheckedModeBanner: false);
    // } else {
    return ChangeNotifierProvider(
      create: (_) => OptionProvider(),
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Color(0xffdb8c1c),
          accentColor: Color(0xfff05e1d),
          // shadowColor: Color(0xff00f59c),
          cardColor: Color(0xffeaeaea),
          hintColor: Color(0xfff52d00),
          highlightColor: Color(0xffc4c4c4),
          fontFamily: "Yekan",
        ),
        debugShowCheckedModeBanner: false,
        home: DrawerScreen(
          body: HomeScreen(),
        ),
      ),
    );
    // }
    //   },
    // );
  }
}

// class Init {
//   Init._();
//   static final instance = Init._();

//   Future initialize() async {
//     await Future.delayed(Duration(seconds: 3));
//   }
// }
