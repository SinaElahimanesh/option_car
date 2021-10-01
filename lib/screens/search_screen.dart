import 'package:flutter/material.dart';
import 'package:option_car/models/option.dart';
import 'package:provider/provider.dart';

import '../providers/option_provider.dart';
import '../widgets/optionsCard.dart';

class SearchScreen extends StatelessWidget {
  final hotSearches = [
    "آینه بغل پراید",
    "ضبط logic",
    "شیشه دودی تیبا",
    "ضبط آئودی",
    "کفی زانتیا",
  ];

  // List<Option> options = [
  //   Option(
  //       name: "ضبط مدل fs logic",
  //       imageURL: 'assets/images/options/zabt.png',
  //       hasDiscount: true,
  //       discountPercent: 15,
  //       lastPrice: 450000,
  //       newPrice: 300000,
  //       cars: ['۲۰۶', 'رانا', 'سورن', 'دنا'],
  //       hasImmediateDelivery: true,
  //       hasInPlaceInstallation: true),
  //   Option(
  //       name: "آینه بغل تاشو",
  //       imageURL: 'assets/images/options/ayne.png',
  //       hasDiscount: true,
  //       discountPercent: 15,
  //       lastPrice: 300000,
  //       newPrice: 250000,
  //       cars: ['۲۰۷', 'پراید'],
  //       hasImmediateDelivery: true,
  //       hasInPlaceInstallation: false),
  //   Option(
  //       name: "ضبط مدل fs logic",
  //       imageURL: 'assets/images/options/zabt.png',
  //       hasDiscount: true,
  //       discountPercent: 15,
  //       lastPrice: 450000,
  //       newPrice: 300000,
  //       cars: ['۲۰۶', 'رانا', 'سورن', 'دنا'],
  //       hasImmediateDelivery: true,
  //       hasInPlaceInstallation: true),
  //   Option(
  //       name: "آینه بغل تاشو",
  //       imageURL: 'assets/images/options/ayne.png',
  //       hasDiscount: true,
  //       discountPercent: 15,
  //       lastPrice: 300000,
  //       newPrice: 250000,
  //       cars: ['۲۰۷', 'پراید'],
  //       hasImmediateDelivery: true,
  //       hasInPlaceInstallation: false)
  // ];

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    final _theme = Theme.of(context);
    final _provider = Provider.of<OptionProvider>(context);
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.8),
      body: Container(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: Icon(
                    Icons.close_rounded,
                    color: _theme.accentColor,
                    size: _mediaQuery.size.width * 0.07,
                  ),
                ),
                // Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: _mediaQuery.size.width * 0.1,
                  ),
                  child: TextField(
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search_rounded,
                        color: Colors.white,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: _mediaQuery.size.width * 0.1,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "جستجو های محبوب",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: _mediaQuery.textScaleFactor * 20,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.local_fire_department_outlined,
                        color: _theme.primaryColor,
                        size: _mediaQuery.size.width * 0.08,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, i) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        child: Chip(
                          label: Text(
                            hotSearches[i],
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            textDirection: TextDirection.rtl,
                          ),
                          backgroundColor: Color(0xff333333),
                          side: BorderSide(
                            width: 0.3,
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                        ),
                      );
                    },
                    itemCount: hotSearches.length,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: _mediaQuery.size.width * 0.1,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "آپشن های داغ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: _mediaQuery.textScaleFactor * 20,
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Icon(
                        Icons.trending_up_rounded,
                        color: _theme.primaryColor,
                        size: _mediaQuery.size.width * 0.08,
                      ),
                    ],
                  ),
                ),
                // Expanded(
                //   child:
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 30,
                    ),
                    itemBuilder: (_, i) {
                      return OptionCard(
                        option: _provider.options[i],
                        imgWidth: 50,
                        theme: _theme,
                        mediaQuery: _mediaQuery,
                        onTapped: () {},
                      );
                    },
                    itemCount: _provider.options.length,
                  ),
                ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
