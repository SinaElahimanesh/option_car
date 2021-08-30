import 'package:flutter/material.dart';
import 'package:option_car/models/option.dart';
import '../homeMenu.dart';

Widget optionCard(Option option,
    {required double imgWidth, onLike, onTapped, bool isProductPage = false}) {

  var carsList = '';
  for (var car in option.cars) {
    carsList += car;
    carsList += ' . ';
  }
  if(carsList[carsList.length-2] == '.') {
    carsList = carsList.substring(0, carsList.length-2);
  }
  return Container(
    width: 180,
    height: 250,
    // color: Colors.red,
    margin: EdgeInsets.only(left: 20),
    child: Stack(
      children: <Widget>[
        Container(
          width: 180,
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xff97e9cc)),
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 100,
                  child: Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0), child: Image.asset(option.imageURL, width: 120.0)),
                ),
                Text(
                    option.name,
                  style: TextStyle(
                      color: Colors.black87, fontSize: 14.0, fontWeight: FontWeight.bold, fontFamily: 'vazir'
                  ),
                ),
                Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 2),
                child: Row(
                  children: [
                    Text('تومان',
                        style: TextStyle(
                            color: Colors.black26, fontSize: 11.0, fontWeight: FontWeight.bold, fontFamily: 'vazir'
                        )),
                    Text(option.lastPrice.toString(),
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.black45, fontSize: 11.0, fontWeight: FontWeight.bold, fontFamily: 'vazir'
                        )),
                  ],
                )),
                Padding(padding: EdgeInsets.fromLTRB(10, 2, 10, 10),
                child: Row(
                  children: [
                    Text('تومان',
                        style: TextStyle(
                            color: Colors.black26, fontSize: 11.0, fontWeight: FontWeight.bold, fontFamily: 'vazir'
                        )),
                    Text(option.newPrice.toString(),
                        style: TextStyle(
                            color: Colors.black, fontSize: 11.0, fontWeight: FontWeight.bold, fontFamily: 'vazir'
                        )),
                  ],
                ),),
                Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(':مناسب برای',
                        style: TextStyle(
                            color: Colors.black87, fontSize: 9.0, fontWeight: FontWeight.bold, fontFamily: 'vazir'
                        )),
                    Image.asset('assets/images/car.png', width: 15.0)
                  ],
                ),),
              Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(carsList, textAlign: TextAlign.start, style: TextStyle(
                    color: Colors.black87, fontSize: 9.0, fontWeight: FontWeight.bold, fontFamily: 'vazir'
                )),
              )

              ],
            ),
          )),

        Positioned(
            top: 0,
            left: 0,
            child: (option.hasDiscount)
                ? Container(
              // decoration: BoxDecoration(
              //     color: Colors.grey[600],
              //     borderRadius: BorderRadius.circular(50)),
              child: Image.asset('assets/images/discount.png', width: 20.0)
            )
                : SizedBox(width: 0)),

        Positioned(
          top: -4,
            left: 70,
            child: (option.hasDiscount)
                ? Container(
              // decoration: BoxDecoration(
              //     color: Colors.grey[600],
              //     borderRadius: BorderRadius.circular(50)),
              child: Text('تخفیف',
                  style: TextStyle(
                      color: Colors.red, fontSize: 14.0, fontWeight: FontWeight.bold, fontFamily: 'vazir')),
            )
                : SizedBox(width: 0)),

        Positioned(
            top: 0,
            right: 0,
            child: (option.hasDiscount)
                ? Container(
              // decoration: BoxDecoration(
              //     color: Colors.grey[600],
              //     borderRadius: BorderRadius.circular(50)),
              child: Text((option.discountPercent.toString() + '%'),
                  style: TextStyle(
                      color: Colors.red, fontSize: 14.0, fontWeight: FontWeight.bold, fontFamily: 'vazir')),
            )
                : SizedBox(width: 0)),

        Positioned(
            bottom: 60,
            right: 10,
            child: (option.hasDiscount)
                ? Container(
              // decoration: BoxDecoration(
              //     color: Colors.grey[600],
              //     borderRadius: BorderRadius.circular(50)),
              child:  Visibility(
                  visible: option.hasInPlaceInstallation,
                  child:  Row(
                    children: [
                      Text('نصب در محل', style: TextStyle(
                          color: Colors.black87, fontSize: 9.0, fontWeight: FontWeight.bold, fontFamily: 'vazir'
                      ),),
                      Image.asset('assets/images/tool.png', width: 15.0),
                    ],
                  )
              ),
            )
                : SizedBox(width: 0)),

        Positioned(
            bottom: 60,
            left: 10,
            child: (option.hasDiscount)
                ? Container(
              // decoration: BoxDecoration(
              //     color: Colors.grey[600],
              //     borderRadius: BorderRadius.circular(50)),
              child: Visibility(
                  visible: option.hasImmediateDelivery,
                  child:  Row(
                    children: [
                      Text('تحویل فوری', style: TextStyle(
                          color: Colors.black87, fontSize: 9.0, fontWeight: FontWeight.bold, fontFamily: 'vazir'
                      ),),
                      Image.asset('assets/images/thunderbolt.png', width: 15.0),
                    ],
                  )
              ),
            )
                : SizedBox(width: 0)),
      ],
    ),
  );
}