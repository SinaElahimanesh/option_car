import 'package:flutter/material.dart';

class BackgroundImageButton extends StatelessWidget {

  final double width;
  final double height;
  final VoidCallback onPressed;
  final double elevation;
  final RoundedRectangleBorder shape;

  const BackgroundImageButton({
    Key? key,
    this.width = double.infinity,
    required this.height,
    required this.onPressed,
    required this.elevation,
    required this.shape, required Hero child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          Container(
      width: width,
      height: height,
      color: const Color(0xff97e9cc),
      child: Material(
        elevation: elevation,
        color: Colors.transparent,
        child: InkWell(
            onTap: onPressed,
            child: Center(
            )),
      )),

        Align(
            alignment: Alignment.topCenter,

            child: ('fds' != null)
                ? Container(
              padding:
              EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
              // decoration: BoxDecoration(
              //     color: Colors.grey[600],
              //     borderRadius: BorderRadius.circular(50)),
              child: Text('تخفیف',
                  style: TextStyle(
                      color: Colors.red, fontSize: 16.0, fontWeight: FontWeight.bold, fontFamily: 'vazir')),
            )
                : SizedBox(width: 0))
        ]
    );
  }
}