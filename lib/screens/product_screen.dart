import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../login.dart';
import '../profileMenu.dart';
import '../widgets/persian_text.dart';

class ProductScreen extends StatelessWidget {
  final carsGoodFor = {
    "۲۰۶": "همه مدل ها",
    "پارس": "سال ۹۴ و بالاتر",
  };
  final carInfos = {
    "مانیتور": "دارد - LED",
    "درگاه های اتصال": "AUX \n USB",
    "بلوتوث": "دارد",
    "کشور سازنده": "چین",
  };

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _mediaQuery = MediaQuery.of(context);

    // return Scaffold(
    // appBar: AppBar(
    //   backgroundColor: Colors.white,
    //   iconTheme: IconThemeData(
    //     color: Colors.black, //change your color here
    //   ),
    //   title: Padding(
    //     padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.start,
    //           children: [
    //             Container(
    //               width: 50,
    //               child: FlatButton(
    //                 child: Icon(Icons.account_circle,
    //                     color: const Color(0xff707070)),
    //                 onPressed: () {
    //                   Navigator.of(context).push(
    //                     MaterialPageRoute(
    //                       builder: (context) => loginPage(),
    //                     ),
    //                   );
    //                 },
    //               ),
    //             ),
    //             Container(
    //               width: 50,
    //               child: FlatButton(
    //                 child: Icon(
    //                   Icons.shopping_cart,
    //                   color: const Color(0xff707070),
    //                 ),
    //                 onPressed: () {},
    //               ),
    //             ),
    //           ],
    //         ),
    //         Padding(
    //           padding: EdgeInsets.only(right: 30),
    //           // child: Image(
    //           //   image: AssetImage('./assets/images/logo.png'),
    //           //   width: 70.0,
    //           // ),
    //           child: Text(
    //             "insert logo here",
    //             style: TextStyle(
    //               color: Colors.black,
    //               fontSize: _mediaQuery.textScaleFactor * 15,
    //             ),
    //           ),
    //         ),
    //         Container(
    //           width: 50,
    //           child: FlatButton(
    //             child: Icon(Icons.menu, color: const Color(0xff707070)),
    //             onPressed: () {
    //               Navigator.of(context).push(
    //                 MaterialPageRoute(
    //                   builder: (context) => profilePage(),
    //                 ),
    //               );
    //             },
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    //   centerTitle: true,
    //   shadowColor: Colors.white,
    // ),
    // body: SafeArea(
    //   child:
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: PersianText(
                              "اشتراک گذاری",
                              style: TextStyle(
                                color: _theme.primaryColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.ios_share_rounded,
                            color: _theme.primaryColor,
                          ),
                        ],
                      ),
                      VerticalDivider(
                        color: Colors.black,
                        endIndent: 5,
                        indent: 5,
                        thickness: 0.75,
                        // indent: 2,
                        // width: 5,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: PersianText(
                              "نشان کردن",
                              style: TextStyle(
                                color: _theme.primaryColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.star_border, color: _theme.primaryColor),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              CarouselSlider(
                items: [
                  Image.asset("./assets/images/options/zabt.png"),
                  Image.asset("./assets/images/options/zabt.png"),
                  Image.asset("./assets/images/options/zabt.png"),
                ],
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: Duration(
                    seconds: 5,
                  ),
                  height: _mediaQuery.size.height * 0.2,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.scale,
                  viewportFraction: 0.6,
                ),
              ),
              Stack(
                children: [
                  Container(
                    width: _mediaQuery.size.width,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: _theme.highlightColor,
                      child: Stack(
                        children: [
                          Positioned(
                            left: -30,
                            top: 0,
                            child: Stack(
                              children: [
                                Image.asset(
                                  "assets/images/product_sale_indicator.png",
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(40),
                                  child: Text(
                                    "65%",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textDirection: TextDirection.rtl,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 60),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                            width:
                                                _mediaQuery.size.width * 0.15),
                                        PersianText(
                                          "ضبط مدل Pioneer FS",
                                          style: TextStyle(
                                            fontSize:
                                                _mediaQuery.textScaleFactor *
                                                    18,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/images/icons/inPlace_Install.svg",
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            SvgPicture.asset(
                                              "assets/images/icons/fast_delivery.svg",
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Text(
                                      "Pioneer FS_TP",
                                      style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize:
                                            _mediaQuery.textScaleFactor * 13,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          PersianText(
                                            "تومان",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          PersianText(
                                            "880,000",
                                            style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          PersianText(
                                            "تومان",
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          PersianText(
                                            "500,000",
                                            style: TextStyle(
                                              fontSize:
                                                  _mediaQuery.textScaleFactor *
                                                      18,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Row(
                                          children: [
                                            PersianText(
                                              "قطعات الکترونیک ایران خودرو",
                                              style: TextStyle(
                                                color: Colors.grey[700],
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            PersianText(
                                              "تولید کننده:",
                                              style: TextStyle(
                                                fontSize: _mediaQuery
                                                        .textScaleFactor *
                                                    15,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 7,
                                            ),
                                            SvgPicture.asset(
                                                "assets/images/icons/manufacturer.svg"),
                                          ],
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    child: Container(
                      height: 50,
                      width: _mediaQuery.size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.elliptical(
                            _mediaQuery.size.width * 0.5,
                            50,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 1,
                ),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: _theme.highlightColor,
                  child: Container(
                    width: _mediaQuery.size.width,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              PersianText("مناسب برای"),
                              SizedBox(
                                width: 5,
                              ),
                              SvgPicture.asset(
                                  "assets/images/icons/car_good_for.svg"),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (_, i) {
                            String key = carsGoodFor.keys.toList()[i];
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 6,
                                horizontal: 15,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  PersianText(
                                    carsGoodFor[key]!,
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize:
                                          _mediaQuery.textScaleFactor * 12.5,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  PersianText(":"),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    child: PersianText(
                                      key,
                                      style: TextStyle(
                                          fontSize:
                                              _mediaQuery.textScaleFactor * 15),
                                    ),
                                    width: _mediaQuery.size.width * 0.2,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: _theme.primaryColor,
                                    size: 10,
                                  ),
                                ],
                              ),
                            );
                          },
                          itemCount: carsGoodFor.length,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                child: Card(
                  color: _theme.highlightColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Container(
                    width: _mediaQuery.size.width,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              PersianText("مشخصات"),
                              SizedBox(
                                width: 5,
                              ),
                              SvgPicture.asset(
                                "assets/images/icons/info.svg",
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (_, i) {
                            String key = carInfos.keys.toList()[i];
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 7,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  PersianText(carInfos[key]!),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  const PersianText(':'),
                                  Container(
                                    width: _mediaQuery.size.width * 0.3,
                                    child: PersianText(
                                      key,
                                      style: TextStyle(
                                        color: Colors.grey[700],
                                        fontSize:
                                            _mediaQuery.textScaleFactor * 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          itemCount: carInfos.length,
                          shrinkWrap: true,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: _mediaQuery.size.height * 0.1),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 5,
            vertical: 5,
          ),
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: _theme.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        PersianText("تحویل"),
                        SvgPicture.asset(
                          "assets/images/icons/delivering.svg",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Flexible(
                flex: 3,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: _theme.accentColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        PersianText("نصب در محل"),
                        SvgPicture.asset(
                            "assets/images/icons/inPlace_Install_Button.svg"),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
      alignment: Alignment.bottomCenter,
    );
    // );
    // );
  }
}
