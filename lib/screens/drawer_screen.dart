import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

import '../login.dart';
import './drawer_menu.dart';

class DrawerScreen extends StatelessWidget {
  final Widget body;
  final bool appBarBack;
  const DrawerScreen({
    Key? key,
    required this.body,
    this.appBarBack = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: SafeArea(
        child: SliderMenuContainer(
          sliderMenu: DrawerMenu(),
          sliderMain: body,
          appBarColor: Colors.white,
          appBarHeight: _mediaQuery.size.height * 0.1,
          isShadow: true,
          shadowColor: Colors.black,
          trailing: appBarBack
              ? IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back_rounded),
                )
              : null,
          // trailing: Text("asdf"),
          // isTitleCenter: true,
          slideDirection: SlideDirection.RIGHT_TO_LEFT,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    child: IconButton(
                      icon: Icon(
                        Icons.account_circle,
                        color: const Color(0xff707070),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => loginPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    width: 50,
                    child: IconButton(
                      icon: Icon(
                        Icons.shopping_cart,
                        color: const Color(0xff707070),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              // Padding(
              //   padding: EdgeInsets.only(right: 30),
              // child:
              Text(
                "insert logo here",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: _mediaQuery.textScaleFactor * 15,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              // ),
              // Container(
              //   width: 50,
              //   child: IconButton(
              //     icon: Icon(Icons.menu, color: const Color(0xff707070)),
              //     onPressed: () {
              //       Navigator.of(context).push(
              //         MaterialPageRoute(
              //           builder: (context) => profilePage(),
              //         ),
              //       );
              //     },
              //   ),
              // )
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.of(context).push(
      //       PageRouteBuilder(
      //         opaque: false,
      //         pageBuilder: (_, __, ___) => SearchScreen(),
      //       ),
      //     );
      //   },
      //   backgroundColor: const Color(0xffD17A17),
      //   child: Icon(
      //     Icons.search_rounded,
      //     color: Colors.black,
      //   ),
      // ),
    );
  }
}
