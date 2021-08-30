import 'package:flutter/material.dart';
import 'package:option_car/models/category.dart';

import 'cards/carItem.dart';
import 'cards/optionsCard.dart';
import 'models/car.dart';
import 'models/option.dart';
import 'cards/optionItem.dart';

Widget homeMenu(BuildContext context) {

  // will pick it up from here
  // am to start another template
  List<Category> categories = [
    Category(name: 'شیشه (عادی و دودی)', imageURL: 'assets/images/categories/Glass.svg'),
    Category(name: 'کف پوش', imageURL: 'assets/images/categories/Kafi.svg'),
    Category(name: 'دوربین', imageURL: 'assets/images/categories/lens.svg'),
    Category(name: 'گیربکس اتوماتیک', imageURL: 'assets/images/categories/gear-shift.svg'),
  ];

  List<Option> options = [
    Option(
        name: "ضبط مدل fs logic",
        imageURL: 'assets/images/options/zabt.png',
        hasDiscount: true,
        discountPercent: 15,
        lastPrice: 450000,
        newPrice: 300000,
        cars: ['۲۰۶', 'رانا', 'سورن', 'دنا'],
        hasImmediateDelivery: true,
        hasInPlaceInstallation: true
    ),
    Option(
        name: "آینه بغل تاشو",
        imageURL: 'assets/images/options/ayne.png',
        hasDiscount: true,
        discountPercent: 15,
        lastPrice: 300000,
        newPrice: 250000,
        cars: ['۲۰۷', 'پراید'],
        hasImmediateDelivery: true,
        hasInPlaceInstallation: false
    ),
    Option(
        name: "ضبط مدل fs logic",
        imageURL: 'assets/images/options/zabt.png',
        hasDiscount: true,
        discountPercent: 15,
        lastPrice: 450000,
        newPrice: 300000,
        cars: ['۲۰۶', 'رانا', 'سورن', 'دنا'],
        hasImmediateDelivery: true,
        hasInPlaceInstallation: true
    ),
    Option(
        name: "آینه بغل تاشو",
        imageURL: 'assets/images/options/ayne.png',
        hasDiscount: true,
        discountPercent: 15,
        lastPrice: 300000,
        newPrice: 250000,
        cars: ['۲۰۷', 'پراید'],
        hasImmediateDelivery: true,
        hasInPlaceInstallation: false
    )
  ];

  List<Car> cars1 = [
    Car(
        name: "پژو ۲۰۶",
        image: "assets/images/cars/206.png",
        price: "\$45.12",
        userLiked: true,
        discount: 2),
    Car(
        name: "سمند",
        image: "assets/images/cars/samand.png",
        price: "\$28.00",
        userLiked: false,
        discount: 5.2),
    Car(
        name: "پژو ۲۰۶",
        image: "assets/images/cars/206.png",
        price: "\$45.12",
        userLiked: true,
        discount: 2),
    Car(
        name: "سمند",
        image: "assets/images/cars/samand.png",
        price: "\$28.00",
        userLiked: false,
        discount: 5.2),
  ];

  List<Car> cars2 = [
    Car(
        name: "پراید",
        image: "assets/images/cars/pride.png",
        price: "\$45.12",
        userLiked: true,
        discount: 2),
    Car(
        name: "ساینا",
        image: "assets/images/cars/saina.png",
        price: "\$28.00",
        userLiked: false,
        discount: 5.2),
    Car(
        name: "پراید",
        image: "assets/images/cars/pride.png",
        price: "\$45.12",
        userLiked: true,
        discount: 2),
    Car(
        name: "ساینا",
        image: "assets/images/cars/saina.png",
        price: "\$28.00",
        userLiked: false,
        discount: 5.2),
  ];

  return
    SizedBox(
        height: MediaQuery.of(context).size.height-100, child:
    ListView(children: <Widget>[
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
      optionsCarousel(onViewMore: () {}, items: <Widget>[
        optionCard(options[0], onTapped: () {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) {
          //         return new ProductPage(
          //           productData: drinks[0],
          //         );
          //       },
          //     ),
          //   );
        }, onLike: () {}, imgWidth: 80),
        optionCard(options[1], onTapped: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) {
          //       return new ProductPage(
          //         productData: drinks[1],
          //       );
          //     },
          //   ),
          // );
        }, onLike: () {}, imgWidth: 75),
        optionCard(options[2], onTapped: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) {
          //       return new ProductPage(
          //         productData: drinks[2],
          //       );
          //     },
          //   ),
          // );
        }, imgWidth: 110, onLike: () {}),
        optionCard(options[3], onTapped: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) {
          //       return new ProductPage(
          //         productData: drinks[3],
          //       );
          //     },
          //   ),
          // );
        }, onLike: () {}, imgWidth: 60),
      ]),
      // optionCard(foods[0], onTapped: () {
      //   // Navigator.push(
      //   //   context,
      //   //   MaterialPageRoute(
      //   //     builder: (context) {
      //   //       return new ProductPage(
      //   //         productData: foods[0],
      //   //       );
      //   //     },
      //   //   ),
      //   // );
      // }, onLike: () {}, imgWidth: 40),
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
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                optionItem(categories[0], onTapped: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return new ProductPage(
                  //         productData: foods[0],
                  //       );
                  //     },
                  //   ),
                  // );
                }, onLike: () {}, imgWidth: 40),

              optionItem(categories[1], onTapped: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return new ProductPage(
                  //         productData: foods[1],
                  //       );
                  //     },
                  //   ),
                  // );
                }, imgWidth: 250, onLike: () {

                })
              ],
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                optionItem(categories[2], onTapped: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return new ProductPage(
                  //         productData: foods[2],
                  //       );
                  //     },
                  //   ),
                  // );
                }, imgWidth: 200, onLike: () {

                }),
                optionItem(categories[3], onTapped: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return new ProductPage(
                  //         productData: foods[3],
                  //       );
                  //     },
                  //   ),
                  // );
                }, onLike: () {

                }, imgWidth: 40)
              ],
            )
          ]
        ),
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
      carsCarousel('گروه ایران خودرو', 'assets/images/cars/iran_khodro.png', onViewMore: () {}, items: <Widget>[
        carItem(cars1[0], onTapped: () {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) {
          //         return new ProductPage(
          //           productData: drinks[0],
          //         );
          //       },
          //     ),
          //   );
        }, onLike: () {}, imgWidth: 80),
        carItem(cars1[1], onTapped: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) {
          //       return new ProductPage(
          //         productData: drinks[1],
          //       );
          //     },
          //   ),
          // );
        }, onLike: () {}, imgWidth: 75),
        carItem(cars1[2], onTapped: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) {
          //       return new ProductPage(
          //         productData: drinks[2],
          //       );
          //     },
          //   ),
          // );
        }, imgWidth: 110, onLike: () {}),
        carItem(cars1[3], onTapped: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) {
          //       return new ProductPage(
          //         productData: drinks[3],
          //       );
          //     },
          //   ),
          // );
        }, onLike: () {}, imgWidth: 60),
      ]),
  Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10)),
  carsCarousel('گروه سایپا', 'assets/images/cars/saipa.png', onViewMore: () {}, items: <Widget>[
  carItem(cars2[0], onTapped: () {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) {
  //         return new ProductPage(
  //           productData: drinks[0],
  //         );
  //       },
  //     ),
  //   );
  }, onLike: () {}, imgWidth: 80),
  carItem(cars2[1], onTapped: () {
  // Navigator.push(
  //   context,
  //   MaterialPageRoute(
  //     builder: (context) {
  //       return new ProductPage(
  //         productData: drinks[1],
  //       );
  //     },
  //   ),
  // );
  }, onLike: () {}, imgWidth: 75),
  carItem(cars2[2], onTapped: () {
  // Navigator.push(
  //   context,
  //   MaterialPageRoute(
  //     builder: (context) {
  //       return new ProductPage(
  //         productData: drinks[2],
  //       );
  //     },
  //   ),
  // );
  }, imgWidth: 110, onLike: () {}),
  carItem(cars2[3], onTapped: () {
  // Navigator.push(
  //   context,
  //   MaterialPageRoute(
  //     builder: (context) {
  //       return new ProductPage(
  //         productData: drinks[3],
  //       );
  //     },
  //   ),
  // );
  }, onLike: () {}, imgWidth: 60),
    ])]));
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
            headerCategoryItem('Frieds', Icons.videogame_asset, onPressed: () {}),
            headerCategoryItem('Frieds', Icons.games_outlined, onPressed: () {}),
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

Widget carsCarousel(String title, String image, {onViewMore, required List<Widget> items}) {
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
        )
  );
}