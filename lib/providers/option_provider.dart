import 'package:flutter/material.dart';

import '../models/car.dart';
import '../models/category.dart';
import '../models/option.dart';

class OptionProvider with ChangeNotifier {
  List<Category> categories = [
    Category(
      name: 'شیشه (عادی و دودی)',
      imageURL: 'assets/images/categories/Glass.svg',
      description:
          'امروزه بسیاری از خودرو های از این قابلیت بهره میبرند. یکی از مهم ترین قابلیت های این خودرو در هم آپشن نهفته است. زیرا شما نمیدانید که چقدر مهم است.',
    ),
    Category(
      name: 'کف پوش',
      imageURL: 'assets/images/categories/Kafi.svg',
      description:
          'امروزه بسیاری از خودرو های از این قابلیت بهره میبرند. یکی از مهم ترین قابلیت های این خودرو در هم آپشن نهفته است. زیرا شما نمیدانید که چقدر مهم است.',
    ),
    Category(
      name: 'دوربین',
      imageURL: 'assets/images/categories/lens.svg',
      description:
          'امروزه بسیاری از خودرو های از این قابلیت بهره میبرند. یکی از مهم ترین قابلیت های این خودرو در هم آپشن نهفته است. زیرا شما نمیدانید که چقدر مهم است.',
    ),
    Category(
      name: 'گیربکس اتوماتیک',
      imageURL: 'assets/images/categories/gear-shift.svg',
      description:
          'امروزه بسیاری از خودرو های از این قابلیت بهره میبرند. یکی از مهم ترین قابلیت های این خودرو در هم آپشن نهفته است. زیرا شما نمیدانید که چقدر مهم است.',
    ),
  ];

  List<Option> options = [
    Option(
        name: "ضبط مدل fs logic",
        imageURL: 'assets/images/options/zabt.png',
        hasDiscount: true,
        discountPercent: 15,
        lastPrice: 450000,
        newPrice: 300000,
        cars: ['۲۰۶', 'رانا', 'سورن', 'دنا'],
        hasImmediateDelivery: true,
        hasInPlaceInstallation: true),
    Option(
        name: "آینه بغل تاشو",
        imageURL: 'assets/images/options/ayne.png',
        hasDiscount: true,
        discountPercent: 15,
        lastPrice: 300000,
        newPrice: 250000,
        cars: ['۲۰۷', 'پراید'],
        hasImmediateDelivery: true,
        hasInPlaceInstallation: false),
    Option(
        name: "ضبط مدل fs logic",
        imageURL: 'assets/images/options/zabt.png',
        hasDiscount: true,
        discountPercent: 15,
        lastPrice: 450000,
        newPrice: 300000,
        cars: ['۲۰۶', 'رانا', 'سورن', 'دنا'],
        hasImmediateDelivery: true,
        hasInPlaceInstallation: true),
    Option(
        name: "آینه بغل تاشو",
        imageURL: 'assets/images/options/ayne.png',
        hasDiscount: true,
        discountPercent: 15,
        lastPrice: 300000,
        newPrice: 250000,
        cars: ['۲۰۷', 'پراید'],
        hasImmediateDelivery: true,
        hasInPlaceInstallation: false),
    Option(
        name: "آینه بغل تاشو",
        imageURL: 'assets/images/options/ayne.png',
        hasDiscount: true,
        discountPercent: 15,
        lastPrice: 300000,
        newPrice: 250000,
        cars: ['۲۰۷', 'پراید'],
        hasImmediateDelivery: true,
        hasInPlaceInstallation: false),
    Option(
        name: "آینه بغل تاشو",
        imageURL: 'assets/images/options/ayne.png',
        hasDiscount: true,
        discountPercent: 15,
        lastPrice: 300000,
        newPrice: 250000,
        cars: ['۲۰۷', 'پراید'],
        hasImmediateDelivery: true,
        hasInPlaceInstallation: false)
  ];

  List<Car> cars1 = [
    Car(
        name: "پژو ۲۰۶",
        image: "assets/images/cars/206.png",
        price: "\$45.12",
        userLiked: true,
        discount: 2),
    Car(
        name: "سمند",
        image: "assets/images/cars/samand.png",
        price: "\$28.00",
        userLiked: false,
        discount: 5.2),
    Car(
        name: "پژو ۲۰۶",
        image: "assets/images/cars/206.png",
        price: "\$45.12",
        userLiked: true,
        discount: 2),
    Car(
        name: "سمند",
        image: "assets/images/cars/samand.png",
        price: "\$28.00",
        userLiked: false,
        discount: 5.2),
  ];

  List<Car> cars2 = [
    Car(
        name: "پراید",
        image: "assets/images/cars/pride.png",
        price: "\$45.12",
        userLiked: true,
        discount: 2),
    Car(
        name: "ساینا",
        image: "assets/images/cars/saina.png",
        price: "\$28.00",
        userLiked: false,
        discount: 5.2),
    Car(
        name: "پراید",
        image: "assets/images/cars/pride.png",
        price: "\$45.12",
        userLiked: true,
        discount: 2),
    Car(
        name: "ساینا",
        image: "assets/images/cars/saina.png",
        price: "\$28.00",
        userLiked: false,
        discount: 5.2),
  ];
}
