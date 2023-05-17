import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../common_widget/home_top_bar.dart';
import '../../common_widget/search_bar.dart';
import '../../models/product_model.dart';
import '../sidebar_screen/sidebar_screen.dart';
import 'new_arrival.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 25,
              right: 28,
            ),
            child: Column(
              children: [
                HomeApBar(
                  text: Text(
                    "Hey Alice",
                    style: GoogleFonts.firaSans(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff3C3C3C),
                    ),
                  ),
                  subname: Text(
                    "Welcome Back!",
                    style: GoogleFonts.firaSans(
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffFF5A5F),
                    ),
                  ),
                  trailingIcon: InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SideBarPage();
                            },
                          ),
                        );
                      });
                    },
                    child: const Icon(
                      Icons.menu,
                      color: Color(0xff3C3C3C),
                      size: 40,
                    ),
                  ),
                ),
                SearchBar(width: width,
                hinttext: "Search for books, guitars and more...",),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "New Arrival",
                      style: GoogleFonts.firaSans(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff3C3C3C),
                      ),
                    ),
                    Text(
                      "View more",
                      style: GoogleFonts.firaSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff898989),
                      ),
                    ),
                  ],
                ),
                NewArrival(),
                SizedBox(
                  height: 33,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recently viewed",
                      style: GoogleFonts.firaSans(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff3C3C3C),
                      ),
                    ),
                    Text(
                      "View more",
                      style: GoogleFonts.firaSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff898989),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 255,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Container(
                              height: 255,
                              width: 268,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color(0xffF5F5F5),
                              ),
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          topRight: Radius.circular(12),
                                          topLeft: Radius.circular(12),
                                        ),
                                        child: Image.asset(
                                          recentModel[index].image,
                                          fit: BoxFit.cover,
                                          height: 174,
                                          width: 268,
                                        ),
                                      ),
                                      Positioned(
                                        right: 10,
                                        bottom: 10,
                                        child: GestureDetector(
                                          onTap: () {},
                                          child: const CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 20,
                                            child: Icon(Icons.favorite_border,
                                                color: Color(0xffFF5858)),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 72,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                      color: Color(0xffF5F5F5),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                recentModel[index].productName,
                                                style: GoogleFonts.firaSans(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 18,
                                                  color:
                                                      const Color(0xff3C3C3C),
                                                ),
                                              ),
                                              Text(
                                                recentModel[index].dateandbrand,
                                                style: GoogleFonts.firaSans(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color:
                                                      const Color(0xffC1839F),
                                                ),
                                              )
                                            ],
                                          ),
                                          Text(
                                            recentModel[index].price,
                                            style: GoogleFonts.firaSans(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 24,
                                              color: const Color(0xff3C3C3C),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Container(
                          width: 15,
                          color: Colors.white,
                        );
                      },
                      itemCount: recentModel.length),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

