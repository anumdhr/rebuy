import 'dart:ui';

import 'package:flutter/cupertino.dart';

class ListModel {
  String image;
  String productName;
  String dateandbrand;
  String price;
  List<String> productModel;

  ListModel({
    required this.image,
    required this.productName,
    required this.dateandbrand,
    required this.price,
    required this.productModel,
  });
}

List<ListModel> listModel = [
  ListModel(
      image: "assets/buggy.png",
      productName: "Batman Toy",
      dateandbrand: "2018 | funSkool",
      price: "₹ 899",
      productModel: []),
  ListModel(
      image: "assets/buggy.png",
      productName: "You Are Your...",
      dateandbrand: "2020 | M&C",
      price: "₹ 299",
      productModel: []),
  ListModel(
      image: "assets/buggy.png",
      productName: "DSLR Camera",
      dateandbrand: "2018 | Sony",
      price: "₹ 24,299",
      productModel: []),
  ListModel(
      image: "assets/mic.png",
      productName: "Shure Mic",
      dateandbrand: "2019 | Shure",
      price: "₹ 24,999",
      productModel: pm),
];

List<ListModel> recentModel = [
  ListModel(
      image: "assets/ceaser.png",
      productName: "Pen tablet",
      dateandbrand: "2020 | XP-Pen",
      price: "₹ 2,899",
      productModel: []),
  ListModel(
      image: "assets/tablet.png",
      productName: "Amazon Kindle",
      dateandbrand: "2019 | Amazon",
      price: "₹ 3,999",
      productModel: []),
  ListModel(
      image: "assets/Amazon-Kindle-Symbol.png",
      productName: "Golf clubs",
      dateandbrand: "2017 | Golly",
      price: "₹ 24,299",
      productModel: []),
  ListModel(
      image: "assets/54-547425_logo-one-piece-png-best-logos-of-one.png",
      productName: "Golf travel bag",
      dateandbrand: "2020 | Golly",
      price: "₹ 2,299",
      productModel: []),
];

List<String> pm = [
  "assets/mic.png",
  "assets/silvermic.png",
  "assets/digitalmic.png",
];
List<ListModel> productModel=[
  ListModel(image: "assets/tablet.png", productName: "Pen tablet", dateandbrand: "2020 | XP-Pen", price: "2,899", productModel: []),
  ListModel(image: "assets/Amazon-Kindle-Symbol.png", productName: "Amazon Kindle", dateandbrand: "2019 | Amazon", price: "3,999", productModel: []),
  ListModel(image: "assets/golf_club.png", productName: "Golf clubs", dateandbrand: "2017 | Golly", price: "74,299", productModel: []),
  ListModel(image: "assets/golfbaggg.png", productName: "Golf travel bag", dateandbrand: "2020 | Golly", price: "2,299", productModel: []),
];
