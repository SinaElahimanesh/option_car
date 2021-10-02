import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:option_car/providers/option_provider.dart';
import 'package:option_car/widgets/cart_option_card.dart';
import 'package:option_car/widgets/persian_text.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    final _provider = Provider.of<OptionProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PersianText(
              "سبد خرید",
              style: TextStyle(
                fontSize: _mediaQuery.textScaleFactor * 18,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.shopping_cart,
              color: Color(0xff707070),
              size: 30,
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/profile/user.jpg"),
                    radius: _mediaQuery.size.width * 0.08,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PersianText(
                        "محمد",
                        style: TextStyle(
                          fontFamily: 'vazir',
                        ),
                      ),
                      PersianText(
                        "ابول نژادیان",
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'vazir',
                          fontSize: _mediaQuery.textScaleFactor * 11,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(
            //     right: _mediaQuery.size.width * 0.05,
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: [
            //       PersianText(
            //         "سبد خرید",
            //         style: TextStyle(
            //           fontSize: _mediaQuery.textScaleFactor * 20,
            //         ),
            //       ),
            //       SizedBox(
            //         width: _mediaQuery.size.width * 0.1,
            //       ),
            //       Icon(
            //         Icons.shopping_cart,
            //         color: Color(0xff707070),
            //         size: 30,
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: _mediaQuery.size.height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.only(right: _mediaQuery.size.width * 0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PersianText(
                    "نصب",
                    style: TextStyle(
                      fontSize: _mediaQuery.textScaleFactor * 20,
                      color: Color(0xff707070),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset(
                    "assets/images/icons/inPlace_Install_Button.svg",
                    height: 25,
                    width: 25,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: _mediaQuery.size.height * 0.35,
              child: ListView.builder(
                // shrinkWrap: true,
                // semanticChildCount: 3,
                // physics: FixedExtentScrollPhysics(),
                itemBuilder: (_, i) {
                  if (i == 0) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: CartOptionCard(
                        option: _provider.options[i],
                      ),
                    );
                  }
                  if (i == _provider.options.length - 1) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        bottom: 10,
                      ),
                      child: CartOptionCard(
                        option: _provider.options[i],
                      ),
                    );
                  }
                  return CartOptionCard(
                    option: _provider.options[i],
                  );
                },
                itemCount: _provider.options.length,
              ),
            ),
          ],
        ),
      ),
      extendBodyBehindAppBar: true,
    );
  }
}
