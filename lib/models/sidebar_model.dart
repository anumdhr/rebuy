import 'package:flutter/material.dart';
import '../screen/Liked_item_screen/liked_item.dart';
import '../screen/my_account_screen/my_account_screen.dart';
import '../screen/my_listings_page/my_listing_page.dart';
import '../screen/my_orders/my_orders.dart';

class ListTileModel {
  Icon leadingIcon;
  String title;
  String subTitle;
  Widget pages;

  ListTileModel(
      {required this.leadingIcon,
      required this.title,
      required this.subTitle,
      required this.pages});
}

List<ListTileModel> listTileModel = [
  ListTileModel(
    leadingIcon: Icon(Icons.person),
    title: "My Account",
    subTitle: "Edit you details, account settings", pages: MyAccountPage(),
  ),
  ListTileModel(
      leadingIcon: Icon(Icons.shopping_bag_outlined),
      title: "My Orders",
      subTitle: "View all your orders", pages: MyOrderPage(),),
  ListTileModel(
    leadingIcon: Icon(Icons.menu),
    title: "My Listing",
    subTitle: "View your product listing for sale",
    pages: MyListingPage(),
  ),
  ListTileModel(
      leadingIcon: Icon(Icons.favorite_outline),
      title: "Liked items",
      subTitle: "See the products you have wishlisted", pages: LikedItem()),
];
