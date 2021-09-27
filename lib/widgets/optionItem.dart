import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'gradientItem.dart';
import '../screens/home_screen.dart';
import '../models/car.dart';
import '../models/category.dart';

Widget optionItem(Category category,
    {required double imgWidth, onLike, onTapped, bool isProductPage = false}) {
  final String assetName = category.imageURL;
  final Widget svg = SvgPicture.asset(
    assetName,
    semanticsLabel: category.name,
    width: 25,
    color: Colors.black45,
  );

  return Container(
    width: 210,
    height: 50,
    // color: Colors.red,
    margin: EdgeInsets.only(left: 20),
    child: Stack(
      children: <Widget>[
        Container(
          width: 210,
          height: 50,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: RaisedGradientButton(
              height: 150,
              elevation: (isProductPage) ? 20 : 12,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: onTapped,
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                colors: <Color>[Color(0xfff76c1d), Color(0xfffabf51)],
              ),
              child: Text('') //(imgWidth != null) ? imgWidth : 300)),
              ),
        ),
        Positioned(
            top: 3,
            left: 3,
            child: (1 != null)
                ? Container(
                    padding:
                        EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
                    // decoration: BoxDecoration(
                    //     color: Colors.grey[600],
                    //     borderRadius: BorderRadius.circular(50)),
                    child: Text(category.name,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'vazir')),
                  )
                : SizedBox(width: 0)),
        Positioned(
            top: 0,
            right: 0,
            child: (1 != null)
                ? Container(
                    padding:
                        EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
                    // decoration: BoxDecoration(
                    //     color: Colors.grey[600],
                    //     borderRadius: BorderRadius.circular(50)),
                    child: Hero(
                        transitionOnUserGestures: true,
                        tag: category.name,
                        child: svg),
                  )
                : SizedBox(width: 0))
      ],
    ),
  );
}
