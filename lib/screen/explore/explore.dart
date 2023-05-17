import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rebuy/screen/explore/widgets/explore_type.dart';
import '../../common_widget/list_item_app_bar.dart';
import '../../common_widget/search_bar.dart';
import '../../models/explore_model.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              children: [
                const ListItemAppBar(
                  text: "Explore",
                ),
                const SizedBox(
                  height: 15,
                ),
                SearchBar(width: width,hinttext: "Search for books, guitar and more...",),
                const SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ExploreType(text: "Books"),
                      ExploreType(
                        text: "Game",
                      ),
                      ExploreType(
                        text: "Music",
                      ),
                      ExploreType(
                        text: "Camping",
                      ),
                      ExploreType(
                        text: "Sports",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),

                ListView.separated(
                  shrinkWrap: true,
                    itemBuilder: (context, index) {
                     return Container(

                       width: MediaQuery.of(context).size.width,
                        height: 431,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    child: Image.asset(
                                        exploreModel[index].profileImage),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(exploreModel[index].title,
                                        style: GoogleFonts.duruSans(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(exploreModel[index].subTitle,
                                        style: GoogleFonts.duruSans(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xff747474),
                                        ),
                                          
                                      ),
                                    ],
                                  ),

                                  const Spacer(),
                                  PopupMenuButton(
                                    itemBuilder: (context) => [],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10,),
                            Stack(
                              children: [
                                Container(
                                  height:298 ,
                                  child:Image.asset(exploreModel[index].image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Positioned(
                                 bottom: 10,
                                  right: 10,
                                  child: CircleAvatar(
                                    backgroundColor:Color.fromRGBO(255, 90, 95, 0.1),
                                    radius: 20,
                                    child: Icon(Icons.favorite_outline,
                                      color: Color(0xffFF5858),
                                    ),
                                  ),
                                )
                              ],
                            ),
                              const Spacer(),
                              Row(

                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(exploreModel[index].productName,
                                        style: GoogleFonts.duruSans(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xff3C3C3C),
                                        ),
                                      ),
                                      Text(exploreModel[index].year,
                                        style: GoogleFonts.duruSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xff747474),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),

                                  Text("₹"+"${exploreModel[index].price}",
                                    style: GoogleFonts.firaSans(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xff3C3C3C),
                                    ),
                                  ),


                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider();
                    },
                    itemCount: exploreModel.length),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
