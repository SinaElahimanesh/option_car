import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:option_car/homeMenu.dart';
import 'package:option_car/login.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  List<int> _badgeCounts = List<int>.generate(5, (index) => index);

  List<bool> _badgeShows = List<bool>.generate(5, (index) => true);

  @override
  Widget build(BuildContext context) {
    List <Widget> _menus = <Widget>[
      homeMenu(context),
      Center(child: Text('tab2')),
      Center(child: Text('tab3')),
      Center(child: Text('tab4')),
      Center(child: Text('tab5')),
    ];

    return Scaffold(
      // extendBody for floating bar get better perfomance
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: const Color(0xffD17A17),
        child: Icon(Icons.search_rounded),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Container(
                height: 60.0,
                color: Colors.white,
                padding: EdgeInsets.fromLTRB(0, 10.0, 4.0, 0),
                child: IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 0, 5, 0),
                              child: IconButton(icon: new Icon(Icons.account_circle), color: const Color(0xff707070),
                              onPressed: (){  Navigator.of(context).pushReplacement(MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ));},),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: Icon(Icons.shopping_cart, color: const Color(0xff707070)),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('./assets/images/logo.png'),
                              width: 70.0,
                            ),
                          ]),
                        flex: 3,
                      ),
                      Expanded(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                child: Icon(Icons.menu, color: const Color(0xff707070)),
                              )
                            ]
                        ),
                      ),
                    ],
                  ),
                )
            ),
            Container(
              child: _menus[_currentIndex],
            )
          ],
        ),
      ),
      bottomNavigationBar: _buildOriginDesign(),
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