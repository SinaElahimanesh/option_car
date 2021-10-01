import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../widgets/persian_text.dart';
import '../providers/option_provider.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<OptionProvider>(context);
    final _mediaQuery = MediaQuery.of(context);
    return Container(
      color: Color(0xff413f3f),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Stack(
            alignment: Alignment.centerRight,
            children: [
              Image.asset(
                "assets/images/drawer_title_background.png",
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: PersianText(
                  "دسته بندی آپشن ها",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: _mediaQuery.textScaleFactor * 18,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (_, i) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          PersianText(
                            _provider.categories[i].name,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: 30,
                            child: SvgPicture.asset(
                              _provider.categories[i].imageURL,
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (i != _provider.categories.length - 1)
                      Divider(
                        color: Colors.grey,
                        indent: 40,
                      ),
                  ],
                );
              },
              itemCount: _provider.categories.length,
            ),
          ),
        ],
      ),
    );
  }
}
