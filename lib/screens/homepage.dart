import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';

import 'search_screen.dart';
import '../homeMenu.dart';
import '../login.dart';
import '../product.dart';
import '../profileMenu.dart';

class HomePage extends StatefulWidget {
  // HomePage({Key? key, required this.title}) : super(key: key);

  // final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  List<int> _badgeCounts = List<int>.generate(5, (index) => index);

  List<bool> _badgeShows = List<bool>.generate(5, (index) => true);

  @override
  Widget build(BuildContext context) {
    List<Widget> _menus = <Widget>[
      homeMenu(context),
      productPage(context),
      profilePage(),
      Center(child: Text('tab4')),
      Center(child: Text('tab5')),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    child: FlatButton(
                      child: Icon(Icons.account_circle,
                          color: const Color(0xff707070)),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => loginPage()));
                      },
                    ),
                  ),
                  Container(
                      width: 50,
                      child: FlatButton(
                        child: Icon(Icons.shopping_cart,
                            color: const Color(0xff707070)),
                        onPressed: () {},
                      )),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 30),
                child: Image(
                  image: AssetImage('./assets/images/logo.png'),
                  width: 70.0,
                ),
              ),
              Container(
                width: 50,
                child: FlatButton(
                  child: Icon(Icons.menu, color: const Color(0xff707070)),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => profilePage()));
                  },
                ),
              )
            ],
          ),
        ),
        centerTitle: true,
        shadowColor: Colors.white,
      ),
      extendBody: true,
      floatingActionButton: Visibility(
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              PageRouteBuilder(
                opaque: false, // set to false
                pageBuilder: (_, __, ___) => SearchScreen(),
              ),
            );
          },
          backgroundColor: const Color(0xffD17A17),
          child: Icon(Icons.search_rounded),
        ),
        visible: _currentIndex == 0 ? true : false,
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: 15),
        child: _menus[_currentIndex],
      ),
      // bottomNavigationBar: _buildOriginDesign(),
    );
  }

  Widget _buildOriginDesign() {
    return CustomNavigationBar(
      iconSize: 30.0,
      selectedColor: Colors.white,
      strokeColor: Colors.white,
      unSelectedColor: Color(0xff6c788a),
      backgroundColor: Color(0xff040307),
      items: [
        CustomNavigationBarItem(
          icon: Icon(Icons.home),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.lightbulb_outline),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.search),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.account_circle),
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}
