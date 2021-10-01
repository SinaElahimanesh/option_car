import 'package:flutter/material.dart';
import 'package:option_car/product.dart';
import 'package:option_car/screens/product_screen.dart';
import 'package:provider/provider.dart';

import '../providers/option_provider.dart';
import '../login.dart';
import '../profileMenu.dart';
import 'search_screen.dart';
import '../widgets/carItem.dart';
import '../widgets/optionsCard.dart';
import '../widgets/optionItem.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<OptionProvider>(context);
    final _theme = Theme.of(context);
    final _mediaQuery = MediaQuery.of(context);
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
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: 30),
                child: Text(
                  "insert logo here",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: _mediaQuery.textScaleFactor * 15,
                  ),
                ),
              ),
              Container(
                width: 50,
                child: FlatButton(
                  child: Icon(Icons.menu, color: const Color(0xff707070)),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => profilePage(),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
        centerTitle: true,
        shadowColor: Colors.white,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            PageRouteBuilder(
              opaque: false,
              pageBuilder: (_, __, ___) => SearchScreen(),
            ),
          );
        },
        backgroundColor: const Color(0xffD17A17),
        child: Icon(
          Icons.search_rounded,
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height - 100,
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 20, 20),
              child: Text(
                'پیشنهاد های ویژه',
                style: TextStyle(
                  fontFamily: 'vazir',
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff6a6a6a),
                ),
                textAlign: TextAlign.end,
              ),
            ),
            optionsCarousel(
              onViewMore: () {},
              items: <Widget>[
                SizedBox(
                  width: 20,
                ),
                OptionCard(
                  option: _provider.options[0],
                  onTapped: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => ProductScreen(),
                      ),
                    );
                  },
                  imgWidth: 80,
                  theme: _theme,
                  mediaQuery: _mediaQuery,
                ),
                SizedBox(
                  width: 20,
                ),
                OptionCard(
                  option: _provider.options[1],
                  onTapped: () {},
                  imgWidth: 75,
                  theme: _theme,
                  mediaQuery: _mediaQuery,
                ),
                SizedBox(
                  width: 20,
                ),
                OptionCard(
                  option: _provider.options[2],
                  onTapped: () {},
                  imgWidth: 110,
                  theme: _theme,
                  mediaQuery: _mediaQuery,
                ),
                SizedBox(
                  width: 20,
                ),
                OptionCard(
                  option: _provider.options[3],
                  onTapped: () {},
                  imgWidth: 60,
                  theme: _theme,
                  mediaQuery: _mediaQuery,
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 20, 20),
              child: Text(
                'محبوب ترین دسته ها',
                style: TextStyle(
                  fontFamily: 'vazir',
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff6a6a6a),
                ),
                textAlign: TextAlign.end,
              ),
            ),
            SizedBox(
              height: 130,
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    optionItem(_provider.categories[0],
                        onTapped: () {}, onLike: () {}, imgWidth: 40),
                    optionItem(_provider.categories[1],
                        onTapped: () {}, imgWidth: 250, onLike: () {})
                  ],
                ),
                Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    optionItem(_provider.categories[2],
                        onTapped: () {}, imgWidth: 200, onLike: () {}),
                    optionItem(_provider.categories[3],
                        onTapped: () {}, onLike: () {}, imgWidth: 40)
                  ],
                )
              ]),
            ),
            Container(
              child: Divider(
                color: const Color(0xffe5e2e2),
                height: 50,
                indent: 250,
                thickness: 1.8,
              ),
              margin: const EdgeInsets.only(left: 10.0, right: 20.0),
              width: 20.0,
              height: 50,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Text(
                'خودروی خود را انتخاب کنید',
                style: TextStyle(
                  fontFamily: 'vazir',
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff6a6a6a),
                ),
                textAlign: TextAlign.end,
              ),
            ),
            carsCarousel(
                'گروه ایران خودرو', 'assets/images/cars/iran_khodro.png',
                onViewMore: () {},
                items: <Widget>[
                  carItem(_provider.cars1[0],
                      onTapped: () {}, onLike: () {}, imgWidth: 80),
                  carItem(_provider.cars1[1],
                      onTapped: () {}, onLike: () {}, imgWidth: 75),
                  carItem(_provider.cars1[2],
                      onTapped: () {}, imgWidth: 110, onLike: () {}),
                  carItem(_provider.cars1[3],
                      onTapped: () {}, onLike: () {}, imgWidth: 60),
                ]),
            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
            carsCarousel(
              'گروه سایپا',
              'assets/images/cars/saipa.png',
              onViewMore: () {},
              items: <Widget>[
                carItem(
                  _provider.cars2[0],
                  onTapped: () {},
                  onLike: () {},
                  imgWidth: 80,
                ),
                carItem(
                  _provider.cars2[1],
                  onTapped: () {},
                  onLike: () {},
                  imgWidth: 75,
                ),
                carItem(
                  _provider.cars2[2],
                  onTapped: () {},
                  imgWidth: 110,
                  onLike: () {},
                ),
                carItem(
                  _provider.cars2[3],
                  onTapped: () {},
                  onLike: () {},
                  imgWidth: 60,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget sectionHeader(String headerTitle, String image, {onViewMore}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(left: 15, top: 2),
        child: FlatButton(
          onPressed: onViewMore,
          child: Text(
            '< مشاهده همه',
            style: TextStyle(
              fontFamily: 'vazir',
              fontSize: 14.5,
              color: const Color(0xff808080),
            ),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(right: 15, top: 10, bottom: 14),
        child: Row(
          children: [
            Text(
              headerTitle,
              style: TextStyle(
                fontFamily: 'vazir',
                fontSize: 14.5,
                fontWeight: FontWeight.bold,
                color: const Color(0xff001976),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(6, 0, 0, 5),
              child: Image.asset(image, width: 20.0),
            ),
          ],
        ),
      ),
    ],
  );
}

// wrap the horizontal listview inside a sizedBox..
Widget headerTopCategories() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      sectionHeader('پیشنهاد های ویژه', '', onViewMore: () {}),
      SizedBox(
        height: 130,
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: <Widget>[
            headerCategoryItem('Frieds', Icons.credit_card, onPressed: () {}),
            headerCategoryItem('Frieds', Icons.score, onPressed: () {}),
            headerCategoryItem('Frieds', Icons.color_lens, onPressed: () {}),
            headerCategoryItem('Frieds', Icons.videogame_asset,
                onPressed: () {}),
            headerCategoryItem('Frieds', Icons.games_outlined,
                onPressed: () {}),
          ],
        ),
      )
    ],
  );
}

Widget headerCategoryItem(String name, IconData icon, {onPressed}) {
  return Container(
    margin: EdgeInsets.only(left: 15),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(bottom: 10),
            width: 86,
            height: 86,
            child: FloatingActionButton(
              shape: CircleBorder(),
              heroTag: name,
              onPressed: onPressed,
              backgroundColor: Colors.white,
              child: Icon(icon, size: 35, color: Colors.black87),
            )),
        Text(name + ' ›')
      ],
    ),
  );
}

Widget carsCarousel(String title, String image,
    {onViewMore, required List<Widget> items}) {
  return Container(
    margin: EdgeInsets.only(top: 5),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        sectionHeader(title, image, onViewMore: onViewMore),
        SizedBox(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: (items != null)
                ? items
                : <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text('No items available at this moment.'),
                    )
                  ],
          ),
        )
      ],
    ),
  );
}

Widget optionsCarousel({onViewMore, required List<Widget> items}) {
  return Container(
      margin: EdgeInsets.only(top: 5),
      child: SizedBox(
        height: 300,
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: (items != null)
              ? items
              : <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text('No items available at this moment.'),
                  )
                ],
        ),
      ));
}
