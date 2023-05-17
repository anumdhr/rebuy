class ExploreModel{
  String title;
  String subTitle;
  String profileImage;
  String image;
  String productName;
  String year;
  String price;

  ExploreModel({
    required this.title,
    required this.subTitle,
    required this.profileImage,
    required this.image,
    required this.productName,
    required this.year,
    required this.price,
});

}
List<ExploreModel> exploreModel=[
  ExploreModel(title: "Cliff Hanger", subTitle: "El Dorado", profileImage: "assets/blackinwhite1.png", image: "assets/guitar.png", productName: "Cordoba Mini Guitar", year: "Make Cordoba | Year:2020", price: "25,000"),
  ExploreModel(title: "Frank n.Stein", subTitle: "Shangri La", profileImage: "assets/blackinwhite2.png ", image: "assets/buggy.png", productName: "iPhone 12 Mini", year: "Make Apple |Year:2020", price: "53,000"),
  ExploreModel(title: "Bill Yerds", subTitle: "Arcadia", profileImage: "assets/blackinwhite1.png", image: "assets/golfbaggg.png", productName: "Apple Watch 3", year: "Make: Apple | Year:2020", price: "19,000"),
];