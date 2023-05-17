import 'package:flutter/cupertino.dart';

class ListingModel {
  String image;
  String productName;
  String date;
  String price;
String? views;
String? number;

  ListingModel({
    required this.image,
    required this.productName,
    required this.date,
    required this.price,
    this.views,
    this.number,

  });
}
List<ListingModel> listingModel=[
  ListingModel(image: "assets/airpods.png", productName: "Apple AirPods Pro", date: "21 Jan 2021", price: "8,999"),
  ListingModel(image: "assets/charger.png", productName: "JBL Charge 2 Speaker", date: "20 Dec 2020", price: "6,499"),
  ListingModel(image: "assets/controller.png", productName: "PlayStation Controller", date: "14 Nov 2020", price: "1,299"),
  ListingModel(image: "assets/cycle.png", productName: "Nexus Mountain Bike", date: "05 Oct 2020", price: "9,100"),
  ListingModel(image: "assets/tent.png", productName: "Wildcraft Ranger Tent", date: "30 Sep 2020", price: "999"),
];
List<ListingModel> myListingModel=[
  ListingModel(image: "assets/airpods.png", productName: "Jabra Wireless Earbuds", date: "03 May 2021", price: "₹8,999",views: "Views:1K",number: "3"),
  ListingModel(image: "assets/charger.png", productName: "MacBook Air", date: "20 Apr 2021", price: "₹45,499",views: "Views: 1.8K",number: "1"),
  ListingModel(image: "assets/controller.png", productName: "Amazon Alexa", date: "14 Apr 2021", price: "₹999",views: "Views: 2.2k"),
  ListingModel(image: "assets/cycle.png", productName: "LG Monitor", date: "13 Apr 2021", price: "₹9,100",views: "Views: 2.6k"),
  ListingModel(image: "assets/tent.png", productName: "Google Home Mini", date: "12 Apr 2021", price: "₹1299",views: "Views: 3.5k"),
];

