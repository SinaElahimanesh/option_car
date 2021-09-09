class OptionFullModel {

  late String name;
  late String description;
  late List<String> imageURLs;
  late bool hasDiscount;
  late int discountPercent;
  late double lastPrice;
  late double newPrice;
  late var cars = new List.empty();
  late var carsInfo = new List.empty();
  late bool hasImmediateDelivery;
  late bool hasInPlaceInstallation;
  late String company;
  late String country;
  var info = new Map();


  OptionFullModel({
    required this.name,
    required this.description,
    required this.imageURLs,
    required this.hasDiscount,
    required this.discountPercent,
    required this.lastPrice,
    required this.newPrice,
    required this.cars,
    required this.carsInfo,
    required this.hasImmediateDelivery,
    required this.hasInPlaceInstallation,
    required this.company,
    required this.country,
    required this.info,
  });

}