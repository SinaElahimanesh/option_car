class Option {

  late String name;
  late String imageURL;
  late bool hasDiscount;
  late int discountPercent;
  late double lastPrice;
  late double newPrice;
  late var cars = new List.empty();
  late bool hasImmediateDelivery;
  late bool hasInPlaceInstallation;

  Option({
    required this.name,
    required this.imageURL,
    required this.hasDiscount,
    required this.discountPercent,
    required this.lastPrice,
    required this.newPrice,
    required this.cars,
    required this.hasImmediateDelivery,
    required this.hasInPlaceInstallation,
  });

}