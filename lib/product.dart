import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'models/optionFullModel.dart';

Widget productPage(BuildContext context) {

  var optionFullModel =
    OptionFullModel(
        name: "ضبط مدل fs logic",
        description: 'Pioneers FS_TSP',
        imageURLs: ['assets/images/options/zabt.png', 'assets/images/options/zabt.png', 'assets/images/options/zabt.png'],
        hasDiscount: true,
        discountPercent: 15,
        lastPrice: 450000,
        newPrice: 300000,
        cars: ['۲۰۶', 'رانا'],
        carsInfo: ['همه مدل ها', 'مدل ۹۴ و بالاتر'],
        hasImmediateDelivery: true,
        hasInPlaceInstallation: true,
        company: 'قطعات الترونیکی ایران خودرو',
        country: 'چین',
        info: {
          'مانیتور': 'LED - دارد',
          'درگاه های اتصال': 'AUX - USB',
          'بلوتوث': 'دارد'
        }
    );
  optionFullModel.info['کشور سازنده'] = optionFullModel.country;
  return
    SizedBox(
        height: MediaQuery.of(context).size.height-100, child: Stack( children: [
    Column(
    children: [
    Container(
    // color: const Color(0xffc4c4c4),
    height: 360.0,
        decoration: BoxDecoration(
          color: const Color(0xffc4c4c4),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.white.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 0,
                offset: Offset(0, 15) // changes position of shadow
            ),
          ],
        ),
        child: Stack(
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Column(
                  children: [
                    Container(
                      height: 190.0,
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        // boxShadow: [
                        //   new BoxShadow(blurRadius: 40.0)
                        // ],
                        borderRadius: new BorderRadius.vertical(
                            bottom: new Radius.elliptical(
                                MediaQuery.of(context).size.width, 110.0)),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 5, 20, 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'اشتراک گذاری',
                                  style: TextStyle(
                                      color: Colors.orangeAccent,
                                      fontSize: 13.0
                                  ),
                                ),
                                Icon(
                                  Icons.share,
                                  color: Colors.orangeAccent,
                                ),
                                const VerticalDivider(
                                  color: Colors.black,
                                  thickness: 1,
                                  indent: 20,
                                  endIndent: 0,
                                  width: 20,
                                ),
                                Text(
                                  'نشان کردن',
                                  style: TextStyle(
                                      color: Colors.orangeAccent,
                                      fontSize: 13.0
                                  ),
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.orangeAccent,
                                ),
                              ],
                            ),
                          ),
                          CarouselSlider(
                            options: CarouselOptions(
                              height: 100.0,
                              autoPlay: true,
                              autoPlayInterval: Duration(seconds: 3),
                              autoPlayAnimationDuration: Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              aspectRatio: 16/9,
                              viewportFraction: 0.8,
                            ),
                            items: optionFullModel.imageURLs.map((i) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                                    decoration: BoxDecoration(
                                        color: Colors.white
                                    ),
                                    child: Image.asset(i),
                                  );
                                },
                              );
                            }).toList(),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Padding(
                              padding: EdgeInsets.fromLTRB(0, 5, 0, 1),
                              child: Text(
                                  optionFullModel.name,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17.0, fontWeight: FontWeight.bold, fontFamily: 'vazir'
                                  )
                              )
                          ),
                          Padding(
                              padding: EdgeInsets.fromLTRB(0, 1, 0, 5),
                              child: Text(
                                  optionFullModel.description,
                                  style: TextStyle(
                                      color: Colors.black26, fontSize: 14.0, fontWeight: FontWeight.bold, fontFamily: 'vazir'
                                  )
                              )
                          ),
                          Padding(padding: EdgeInsets.fromLTRB(10, 5, 10, 2),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('تومان ',
                                      style: TextStyle(
                                          color: Colors.black26, fontSize: 13.0, fontWeight: FontWeight.bold, fontFamily: 'vazir'
                                      )),
                                  Text(optionFullModel.lastPrice.toString(),
                                      style: TextStyle(
                                          decoration: TextDecoration.lineThrough,
                                          color: Colors.black45, fontSize: 15.0, fontWeight: FontWeight.bold, fontFamily: 'vazir'
                                      )),
                                ],
                              )),
                          Padding(padding: EdgeInsets.fromLTRB(10, 2, 10, 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('تومان ',
                                      style: TextStyle(
                                          color: Colors.black26, fontSize: 13.0, fontWeight: FontWeight.bold, fontFamily: 'vazir'
                                      )),
                                  Text(optionFullModel.newPrice.toString(),
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.bold, fontFamily: 'vazir'
                                      )),
                                ],
                              )),
                          Padding(padding: EdgeInsets.fromLTRB(10, 2, 20, 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(optionFullModel.company.toString(),
                                      style: TextStyle(
                                          color: Colors.black26, fontSize: 14.0, fontWeight: FontWeight.bold, fontFamily: 'vazir'
                                      )),
                                  Text(' :تولید کننده ',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 13.0, fontWeight: FontWeight.bold, fontFamily: 'vazir'
                                      )),
                                  Image.asset('images/company.png', width: 20.0,)
                                ],
                              )),
                        ],
                      ),
                    )
                  ],
                )
            ),
            Positioned(
                child: Row(
                  children: [
                    Visibility(
                        visible: optionFullModel.hasInPlaceInstallation,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                          child: SvgPicture.asset(
                            'images/inPlace.svg',
                            semanticsLabel: 'نصب در محل',
                            width: 27,
                            color: Colors.black,
                          )
                        )
                    ),
                    Visibility(
                      visible: optionFullModel.hasImmediateDelivery,
                      child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                          child: SvgPicture.asset(
                            'images/delivery.svg',
                            semanticsLabel: 'تحویل فوری',
                            width: 25,
                            color: Colors.black,
                          )
                      )
                    ),
                  ],
                ),
                top: 190,
                right:10
            ),
            Positioned(
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.elliptical(40, 20)),
                    color: const Color(0xffc4c4c4),
                      gradient:  RadialGradient(
                        colors: [
                          Colors.red,
                          const Color(0xffc4c4c4),
                        ],
                        stops: [0.5, 1]
                      )
                  ),
                  child: Text(
                    optionFullModel.discountPercent.toString() + '%',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'vazir'
                    ),
                  ),
                ),
                top: 161,
                left: 4
            )
          ],
        )
    ),
      Padding(
          padding: EdgeInsets.fromLTRB(8, 15, 8, 5),
          child: Container(
              padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
              width: double.infinity,
              height: 110,
              decoration: BoxDecoration(
                color: const Color(0xffc4c4c4),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(' مناسب برای ',
                            style: TextStyle(
                                color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold, fontFamily: 'vazir'
                            )),
                        Image.asset(
                          'images/car.png',
                          width: 35.0,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 60.0,
                      child: ListView.builder(
                        // Let the ListView know how many items it needs to build.
                        itemCount: optionFullModel.cars.length,
                        // Provide a builder function. This is where the magic happens.
                        // Convert each item into a widget based on the type of item it is.
                        itemBuilder: (context, index) {
                          final item = optionFullModel.cars[index];

                          return Container(
                            height: 20.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(optionFullModel.carsInfo[index],
                                    style: TextStyle(
                                        color: Colors.black26, fontSize: 14.0, fontWeight: FontWeight.bold, fontFamily: 'vazir'
                                    )),
                                Text(' : ' + item + ' ',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.bold, fontFamily: 'vazir'
                                    )),
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  ]
              )
          )
      ),
      Padding(
          padding: EdgeInsets.fromLTRB(8, 15, 8, 5),
          child: Container(
              height: 170.0,
              padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffc4c4c4),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(' مشخصات ',
                            style: TextStyle(
                                color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold, fontFamily: 'vazir'
                            )),
                        Image.asset(
                          'images/info.png',
                          width: 20.0,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 120,
                      child: ListView.builder(
                        // Let the ListView know how many items it needs to build.
                        itemCount: optionFullModel.info.entries.length,
                        // Provide a builder function. This is where the magic happens.
                        // Convert each item into a widget based on the type of item it is.
                        itemBuilder: (context, index) {
                          final item = optionFullModel.info.entries.elementAt(index);

                          return Container(
                            padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                  child: Text(item.value,
                                      style: TextStyle(
                                          color: Colors.black26, fontSize: 14.0, fontWeight: FontWeight.bold, fontFamily: 'vazir'
                                      )),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
                                  child:  Text(' ' + item.key + ' ',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.bold, fontFamily: 'vazir'
                                      )),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  ]
              )
          )
      ),
      ],
    ),
      Positioned(
        bottom: 22,
          right: 0,
          left: 0,
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed))
                                return const Color(0xffdb8c1c);
                              return const Color(0xffdb8c1c); // Use the component's default.
                            },
                          ),
                        ),
                        onPressed: () {},
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child: Text(
                                'تحویل',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'vazir',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  letterSpacing: 1.5,
                                ),
                              )),
                              SvgPicture.asset(
                                'images/tahvil.svg',
                                semanticsLabel: 'تحویل',
                                width: 25,
                                color: Colors.black45,
                              )
                            ],
                          ),
                        )
                      // style: ElevatedButton.styleFrom(
                      //   shape: CircleBorder(),
                      //   padding: EdgeInsets.all(20),
                      //   primary: Colors.blue, // <-- Button color
                      //   onPrimary: Colors.red, // <-- Splash color
                      // ),
                    ),
                  ),
                flex: 1,
              ),
              Expanded(
                child: Padding(
  padding: EdgeInsets.fromLTRB(5, 10, 10, 10),
  child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed))
              return const Color(0xfff05e1d);
            return const Color(0xfff05e1d); // Use the component's default.
          },
        ),
      ),
      onPressed: () {},
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Text(
              'نصب در محل',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'vazir',
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Colors.white,
                letterSpacing: 1.5,
              ),
            ),),
            SvgPicture.asset(
              'images/nasb.svg',
              semanticsLabel: 'نصب در محل',
              width: 25,
              color: Colors.black45,
            )
          ],
        ),
      )
    // style: ElevatedButton.styleFrom(
    //   shape: CircleBorder(),
    //   padding: EdgeInsets.all(20),
    //   primary: Colors.blue, // <-- Button color
    //   onPrimary: Colors.red, // <-- Splash color
    // ),
  ),
  ),
                flex: 3,
              )
            ],
          )
      )
  ]));
}