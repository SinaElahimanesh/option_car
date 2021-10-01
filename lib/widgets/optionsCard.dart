import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/option.dart';

class OptionCard extends StatelessWidget {
  final Option option;
  final double imgWidth;
  // VoidCallback onLike;
  final VoidCallback onTapped;
  final bool isProductPage = false;
  final ThemeData theme;
  final MediaQueryData mediaQuery;

  OptionCard({
    required this.option,
    required this.imgWidth,
    required this.onTapped,
    required this.mediaQuery,
    required this.theme,
  });

  String get carsList {
    var carsList = '';
    for (var car in option.cars) {
      carsList += car;
      carsList += ' . ';
    }
    if (carsList[carsList.length - 2] == '.') {
      carsList = carsList.substring(0, carsList.length - 2);
    }
    return carsList;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Container(
        width: 180,
        height: 250,
        // margin: EdgeInsets.only(left: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 3,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "تخفیف",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: theme.hintColor,
                      fontSize: mediaQuery.textScaleFactor * 13,
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Text(
                    "${option.discountPercent}%",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: theme.hintColor,
                      fontSize: mediaQuery.textScaleFactor * 10,
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  // width: 180,
                  // height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: theme.cardColor,
                  ),
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                              child:
                                  Image.asset(option.imageURL, width: 120.0)),
                        ),
                        Text(
                          option.name,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: mediaQuery.textScaleFactor * 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'vazir',
                          ),
                          textDirection: TextDirection.rtl,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('تومان',
                                          style: TextStyle(
                                              color: Colors.black26,
                                              fontSize: 11.0,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'vazir')),
                                      Text(
                                        option.lastPrice.toString(),
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            color: Colors.black45,
                                            fontSize: 11.0,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'vazir'),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'تومان',
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                          color: Colors.black26,
                                          fontSize: 11.0,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'vazir',
                                        ),
                                      ),
                                      Text(
                                        option.newPrice.toString(),
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize:
                                              mediaQuery.textScaleFactor * 11.0,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'vazir',
                                        ),
                                        textDirection: TextDirection.rtl,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        'مناسب برای:',
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 9.0,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'vazir'),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      SvgPicture.asset(
                                        'assets/images/icons/car_good_for.svg',
                                        width: 15.0,
                                      )
                                    ],
                                  ),
                                  Text(
                                    carsList,
                                    textAlign: TextAlign.start,
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 9.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'vazir',
                                    ),
                                    softWrap: true,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(
                            10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'نصب در محل',
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize:
                                          mediaQuery.textScaleFactor * 9.0,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'vazir',
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  SvgPicture.asset(
                                    'assets/images/icons/inPlace_Install.svg',
                                    semanticsLabel: 'نصب در محل',
                                    width: 15,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'تحویل فوری',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 9.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'vazir'),
                                  ),
                                  SvgPicture.asset(
                                    'assets/images/icons/fast_delivery.svg',
                                    semanticsLabel: 'تحویل فوری',
                                    width: 15,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                if (option.hasDiscount)
                  Positioned(
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: theme.hintColor,
                        boxShadow: [
                          BoxShadow(
                            color: theme.hintColor,
                            blurRadius: 5,
                            spreadRadius: 1,
                            offset: Offset(
                              0,
                              3.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    left: -5,
                    top: -5,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
