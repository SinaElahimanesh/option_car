import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:option_car/widgets/optionsCard.dart';
import 'package:provider/provider.dart';

import '../providers/option_provider.dart';
import '../widgets/persian_text.dart';
import '../models/category.dart';
import './search_screen.dart';

class CategoryScreen extends StatefulWidget {
  final Category category;
  // final Map<String, List<String>> filters = {
  //   'مناسب برای': ['۲۰۶', 'پارس', 'ال نود', 'تیگو ۷'],
  //   'تولید کننده': [
  //     'ایران خودرو',
  //     'logic',
  //     'توشیبا',
  //   ],
  //   'موجود': ['دارد'],
  //   'تخفیف': ['دارد'],
  // };

  CategoryScreen({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final filters = [
    'ـمناسب برای',
    'پارس',
    '206',
    'ال نود',
    'تیگو',
    'ـتولید کننده',
    'ایران خودرو',
    'توشیبا',
    'ـموجود',
    'دارد',
  ];

  final selected = [
    false,
    true,
    false,
    true,
    false,
    false,
    false,
    true,
    true,
    false,
  ];

  var filterListIndex = 0;

  var filterKeyIndex = 0;

  bool shouldGetTitle = true;

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    final _theme = Theme.of(context);
    final _provider = Provider.of<OptionProvider>(context);
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 8,
                  top: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    PersianText(
                      widget.category.name,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: _mediaQuery.textScaleFactor * 19,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset(
                      widget.category.imageURL,
                      height: 35,
                      width: 35,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: _mediaQuery.size.width * 0.1),
                child: ExpandableText(
                  widget.category.description,
                  expandText: "نمایش بیشتر",
                  linkColor: _theme.primaryColor,
                  collapseText: "نمایش کمتر",
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.right,
                  collapseOnTextTap: true,
                  expandOnTextTap: true,
                  style: TextStyle(
                    height: 1.5,
                    color: Colors.grey,
                  ),
                  animation: true,
                ),
              ),
              SizedBox(height: 5),
              Divider(
                color: Colors.black,
                thickness: 0.5,
                indent: _mediaQuery.size.width * 0.1,
                endIndent: _mediaQuery.size.width * 0.1,
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.chevron_left),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 30,
                          width: _mediaQuery.size.width * 0.7,
                          // child:ListView(scrollDirection: Axis.horizontal,children: [],),
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            reverse: true,
                            itemBuilder: (_, i) {
                              final element = filters[i];
                              if (element.startsWith("ـ")) {
                                final title = element.substring(1);
                                return Align(
                                  child: PersianText(
                                    title + ':',
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                );
                              }
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 3,
                                ),
                                child: ChoiceChip(
                                  label: PersianText(
                                    element,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  selected: selected[i],
                                  backgroundColor: Colors.white,
                                  selectedColor: Color(0xff00f59c),
                                  side: !selected[i]
                                      ? BorderSide(
                                          width: 0.1,
                                          color: Colors.black,
                                        )
                                      : null,
                                  disabledColor: Colors.white,
                                  onSelected: (select) {
                                    setState(
                                      () {
                                        selected[i] = select;
                                      },
                                    );
                                  },
                                ),
                              );
                            },
                            itemCount: filters.length,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.filter_list_alt,
                      size: 30,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.chevron_left),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 30,
                          width: _mediaQuery.size.width * 0.7,
                          // child:ListView(scrollDirection: Axis.horizontal,children: [],),
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            reverse: true,
                            itemBuilder: (_, i) {
                              final element = filters[i];
                              if (element.startsWith("ـ")) {
                                final title = element.substring(1);
                                return Align(
                                  child: PersianText(
                                    title + ':',
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                );
                              }
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 3,
                                ),
                                child: ChoiceChip(
                                  label: PersianText(
                                    element,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  selected: selected[i],
                                  backgroundColor: Colors.white,
                                  selectedColor: Color(0xff00f59c),
                                  side: !selected[i]
                                      ? BorderSide(
                                          width: 0.1,
                                          color: Colors.black,
                                        )
                                      : null,
                                  disabledColor: Colors.white,
                                  onSelected: (select) {
                                    setState(
                                      () {
                                        selected[i] = select;
                                      },
                                    );
                                  },
                                ),
                              );
                            },
                            itemCount: filters.length,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.filter_list_rounded,
                      size: 30,
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 5,
                  mainAxisExtent: 240,
                ),
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: OptionCard(
                      option: _provider.options[i],
                      imgWidth: 50,
                      theme: _theme,
                      mediaQuery: _mediaQuery,
                      onTapped: () {},
                    ),
                  );
                },
                itemCount: _provider.options.length,
              )
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          right: 20,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  opaque: false,
                  pageBuilder: (_, __, ___) => SearchScreen(),
                ),
              );
            },
            backgroundColor: const Color(0xffD17A17),
            child: Icon(
              Icons.search_rounded,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
