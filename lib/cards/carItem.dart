import 'package:flutter/material.dart';
import 'gradientItem.dart';
import '../homeMenu.dart';
import '../models/car.dart';
import '../models/category.dart';

Widget carItem(Car car,
    {required double imgWidth, onLike, onTapped, bool isProductPage = false}) {

  return Container(
    width: 200,
    height: 150,
    // color: Colors.red,
    margin: EdgeInsets.only(left: 20),
    child: Stack(
      children: <Widget>[
        Container(
          width: 200,
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)),
          child: RaisedGradientButton(
            height: 150,
              elevation: (isProductPage) ? 20 : 12,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: onTapped,
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                colors: <Color>[Color(0xffe43599), Color(0xff41348d)],
              ),
              child: Hero(
                  transitionOnUserGestures: true,
                  tag: car.name,
                  child: Image.asset(car.image,
                      width: 200))//(imgWidth != null) ? imgWidth : 300)),
          ),
        ),

        Positioned(
            top: 3,
            right: 3,
            child: (car.discount != null)
                ? Container(
              padding:
              EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
              // decoration: BoxDecoration(
              //     color: Colors.grey[600],
              //     borderRadius: BorderRadius.circular(50)),
              child: Text(car.name,
                  style: TextStyle(
                      color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold, fontFamily: 'vazir')),
            )
                : SizedBox(width: 0))
      ],
    ),
  );
}