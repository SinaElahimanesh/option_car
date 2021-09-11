import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {

  bool _inputState = false;

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
        padding: EdgeInsets.fromLTRB(40, 20, 40, 10),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 28, horizontal: 0)),
            Center(
              child: Text(
                'وارد شوید یا ثبت نام کنید',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'vazir',
                  color: Colors.black,
                ),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 25, horizontal: 0)),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'ایمیل یا شماره همراه',
                style: TextStyle(
                  fontSize: 17.0,
                  fontFamily: 'vazir',
                  color: Colors.blueGrey,
                ),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 3, horizontal: 0)),
            TextFormField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.account_circle, color: Colors.black,),
                filled: true,
                fillColor: const Color(0xffdb8c1c),
                focusColor: const Color(0xffdb8c1c),
                hoverColor: const Color(0xffdb8c1c),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                hintText: '09120000000 یا someone@example.com',
              ),
            ),
            Visibility(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.symmetric(vertical: 15, horizontal: 0)),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'رمز عبور',
                        style: TextStyle(
                          fontSize: 17.0,
                          fontFamily: 'vazir',
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 3, horizontal: 0)),
                    TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.lock, color: Colors.black,),
                        filled: true,
                        fillColor: const Color(0xffdb8c1c),
                        focusColor: const Color(0xffdb8c1c),
                        hoverColor: const Color(0xffdb8c1c),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        hintText: '********',
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0)),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: FlatButton(
                        child: Text(
                          'فراموشی رمز عبور',
                          style: TextStyle(
                            fontSize: 14.5,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'vazir',
                            color: Colors.green,
                          ),
                        ),
                        onPressed: () {  },
                      ),
                    ),
                  ],
                ),
              visible: _inputState,
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0)),
            Center(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    _inputState = true;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'تایید',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 19.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'vazir',
                        color: Colors.green,
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5)),
                    Icon(
                      _inputState?Icons.done:Icons.keyboard_arrow_down,
                      color: Colors.green,
                      size: 19.0,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}