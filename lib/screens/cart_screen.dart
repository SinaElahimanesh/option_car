import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:option_car/providers/option_provider.dart';
import 'package:option_car/widgets/cart_option_card.dart';
import 'package:option_car/widgets/persian_text.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> _animation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(0.0, -0.5),
  ).animate(
    CurvedAnimation(parent: _controller, curve: Curves.decelerate),
  );
  late final Animation<Offset> _animationTwo = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(0.0, 0.5),
  ).animate(
    CurvedAnimation(parent: _controller, curve: Curves.decelerate),
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget pageOne(MediaQueryData _mediaQuery, OptionProvider _provider) =>
      Column(
        children: [
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
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
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
          Container(
            height: _mediaQuery.size.height * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.chevron_left,
                        color: Color(0xff00f59c),
                        size: 30,
                      ),
                      PersianText(
                        "تعیین زمان نصب",
                        style: TextStyle(
                          color: Color(0xff00f59c),
                          fontSize: _mediaQuery.textScaleFactor * 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(flex: 1),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SlideTransition(
                      child: Icon(Icons.keyboard_arrow_up),
                      position: _animation,
                    ),
                    PersianText(
                      "به بالا بکشید.",
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
                Spacer(flex: 3),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Row(
                    children: [
                      PersianText(
                        "تحویل",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 5),
                      SvgPicture.asset(
                        "assets/images/icons/delivering.svg",
                        color: Colors.grey,
                        width: 15,
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      );

  Widget pageTwo(
    MediaQueryData _mediaQuery,
    OptionProvider _provider,
  ) =>
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                PersianText(
                  "نصب",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 5),
                SvgPicture.asset(
                  "assets/images/icons/inPlace_Install_Button.svg",
                  color: Colors.grey,
                  width: 15,
                  height: 15,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: _mediaQuery.size.width * 0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Spacer(flex: 4),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PersianText(
                      "به پایین بکشید.",
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                    SlideTransition(
                      child: Icon(Icons.keyboard_arrow_down),
                      position: _animationTwo,
                    ),
                  ],
                ),
                Spacer(flex: 1),
                Row(
                  children: [
                    PersianText(
                      "تحویل",
                      style: TextStyle(
                        fontSize: _mediaQuery.textScaleFactor * 20,
                        color: Color(0xff707070),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset(
                      "assets/images/icons/delivering.svg",
                      height: 25,
                      width: 25,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
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
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.chevron_left,
                  color: Color(0xff00f59c),
                  size: 30,
                ),
                PersianText(
                  "تعیین زمان تحویل",
                  style: TextStyle(
                    color: Color(0xff00f59c),
                    fontSize: _mediaQuery.textScaleFactor * 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      );

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
            SizedBox(
              height: _mediaQuery.size.height * 0.01,
            ),
            Expanded(
              child: PageView(
                scrollDirection: Axis.vertical,
                controller: PageController(
                  initialPage: 0,
                ),
                physics: PageScrollPhysics(),
                children: [
                  pageOne(_mediaQuery, _provider),
                  pageTwo(_mediaQuery, _provider),
                ],
              ),
            )
          ],
        ),
      ),
      extendBodyBehindAppBar: true,
    );
  }
}
