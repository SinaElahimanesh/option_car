import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart' as intl;

import '../models/option.dart';
import '../widgets/persian_text.dart';

class CartOptionCard extends StatelessWidget {
  final Option option;
  const CartOptionCard({
    Key? key,
    required this.option,
  }) : super(key: key);

  List<Widget> _getOptionCars(MediaQueryData mediaQuery) {
    final carList = option.cars;
    List<Widget> widgetList = [];
    for (var i = 0; i < 3; i++) {
      if (i == carList.length) {
        break;
      }
      widgetList.add(
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 1,
          ),
          child: PersianText(
            carList[i],
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: mediaQuery.textScaleFactor * 10,
            ),
          ),
        ),
      );
      if (i != carList.length - 1 && i != 2) {
        widgetList.add(
          Icon(
            Icons.circle,
            size: 3,
          ),
        );
      }
    }
    return widgetList;
  }

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    final _theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: _mediaQuery.size.width * 0.02,
        vertical: 3,
      ),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Card(
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            color: _theme.cardColor,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 7,
                  ),
                  child: PersianText(
                    option.name,
                    style: TextStyle(
                      fontSize: _mediaQuery.textScaleFactor * 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      option.imageURL,
                      height: _mediaQuery.size.width * 0.1,
                      width: _mediaQuery.size.width * 0.35,
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.center,
                    ),
                    Column(
                      children: [
                        PersianText(
                          "${option.discountPercent}٪ تخفیف",
                          style: TextStyle(
                            color: _theme.hintColor,
                            fontSize: _mediaQuery.textScaleFactor * 12,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            PersianText(
                              "تومان",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: _mediaQuery.textScaleFactor * 10,
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            PersianText(
                              intl.NumberFormat.decimalPattern()
                                  .format(option.lastPrice),
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey,
                                fontSize: _mediaQuery.textScaleFactor * 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Row(
                          children: [
                            PersianText(
                              "تومان",
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            PersianText(
                              intl.NumberFormat.decimalPattern()
                                  .format(option.newPrice),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  PersianText(
                                    "مناسب برای",
                                    style: TextStyle(
                                      fontSize:
                                          _mediaQuery.textScaleFactor * 13,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  SvgPicture.asset(
                                    "assets/images/icons/car_good_for.svg",
                                    height: 10,
                                    width: 10,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: _getOptionCars(
                                  _mediaQuery,
                                ),
                              ),
                              if (option.cars.length > 3)
                                Padding(
                                  padding: const EdgeInsets.only(top: 3),
                                  child: PersianText(
                                    "و بیش تر...",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: _mediaQuery.textScaleFactor * 8,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  PersianText(
                                    "تحویل فوری",
                                    style: TextStyle(
                                      fontSize:
                                          _mediaQuery.textScaleFactor * 10,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  SvgPicture.asset(
                                    "assets/images/icons/fast_delivery.svg",
                                    width: 16,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 2.0),
                                child: Row(
                                  children: [
                                    PersianText(
                                      "نصب در محل",
                                      style: TextStyle(
                                        fontSize:
                                            _mediaQuery.textScaleFactor * 10,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    SvgPicture.asset(
                                      "assets/images/icons/inPlace_Install.svg",
                                      width: 16,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (option.hasDiscount)
            Positioned(
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _theme.hintColor,
                  boxShadow: [
                    BoxShadow(
                      color: _theme.hintColor,
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
    );
  }
}
