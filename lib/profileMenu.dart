import 'package:flutter/material.dart';
import 'models/user.dart';

class profilePage extends StatelessWidget {
  profilePage({Key? key}) : super(key: key);

  var user =
  User(
    firstName: "محمد",
    lastName: "ابول نژادیان",
    profileImageURL: "assets/images/profile/user.jpg",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title:  Image(
          image: AssetImage('./assets/images/logo.png'),
          width: 70.0,
        ),
        centerTitle: true,
        shadowColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(25, 30, 25, 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 40.0,
                      backgroundImage:
                      NetworkImage("${user.profileImageURL}"),
                      backgroundColor: Colors.transparent,
                    ),
                    Column(
                      children: [
                        Text(
                          user.firstName,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'vazir',
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          user.lastName,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'vazir',
                            color: Colors.grey,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(color: Colors.blueGrey),
                      boxShadow: [
                        BoxShadow(color: Colors.white, spreadRadius: 3, blurRadius: 5.0),
                      ],
                    ),
                    padding: EdgeInsets.fromLTRB(4, 3, 3, 3),
                    child: FlatButton(
                      child: Row(
                        children: [
                          Text(
                            'تغییر رمز عبور',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: 'vazir',
                              color: Colors.black,
                            ),
                          ),
                          Icon(
                            Icons.lock,
                            color: const Color(0xffdb8c1c),
                            size: 18.0,
                          )
                        ],
                      ),
                      onPressed: () { } ,
                    )
                )
              ],
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 0)
            ),
            Center(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
                    child: FlatButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.keyboard_arrow_left,
                            color: Colors.blueGrey,
                            size: 24.0,
                          ),
                          Text(
                            'سبد خرید',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'vazir',
                              color: Colors.black,
                            ),
                          ),
                          Icon(
                            Icons.shopping_cart,
                            color: const Color(0xffdb8c1c),
                            size: 24.0,
                          ),
                        ],
                      ),
                      onPressed: () { },
                    )
                )
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(60, 5, 60, 12),
                child: Divider(
                    color: Colors.blueGrey
                )
            ),
            Center(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
                    child: FlatButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.keyboard_arrow_left,
                            color: Colors.blueGrey,
                            size: 24.0,
                          ),
                          Text(
                            'سفارش ها',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'vazir',
                              color: Colors.black,
                            ),
                          ),
                          Icon(
                            Icons.history,
                            color: const Color(0xffdb8c1c),
                            size: 24.0,
                          ),
                        ],
                      ),
                      onPressed: () { },
                    )
                )
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(60, 5, 60, 12),
                child: Divider(
                    color: Colors.blueGrey
                )
            ),
            Center(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
                    child: FlatButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.keyboard_arrow_left,
                            color: Colors.blueGrey,
                            size: 24.0,
                          ),
                          Text(
                            'آدرس ها',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'vazir',
                              color: Colors.black,
                            ),
                          ),
                          Icon(
                            Icons.map,
                            color: const Color(0xffdb8c1c),
                            size: 24.0,
                          ),
                        ],
                      ),
                      onPressed: () { },
                    )
                )
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(60, 5, 60, 12),
                child: Divider(
                    color: Colors.blueGrey
                )
            ),
            Center(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
                    child: FlatButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.keyboard_arrow_left,
                            color: Colors.blueGrey,
                            size: 24.0,
                          ),
                          Text(
                            'نشان شده ها',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'vazir',
                              color: Colors.black,
                            ),
                          ),
                          Icon(
                            Icons.star,
                            color: const Color(0xffdb8c1c),
                            size: 24.0,
                          ),
                        ],
                      ),
                      onPressed: () { },
                    )
                )
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(60, 5, 60, 12),
                child: Divider(
                    color: Colors.blueGrey
                )
            ),
          ],
        ),
      ),
    );
  }
}