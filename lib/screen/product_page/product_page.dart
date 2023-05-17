import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rebuy/screen/product_page/widgets/similar_products.dart';
import '../../common_widget/top_bar.dart';
import '../../models/product_model.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const LoginTopBar(),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 260,
                        width: MediaQuery.of(context).size.width,
                        child: index == 3
                            ? PageView.builder(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Image.asset(
                                      pm[index],
                                      fit: BoxFit.fill,
                                    ),
                                  );
                                },
                                itemCount: pm.length,
                              )
                            : Image.asset(
                                listModel[index].image,
                                fit: BoxFit.fill,
                              ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Shure podcast micro- \n phone",
                                style: GoogleFonts.firaSans(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24,
                                  color: Color(0xff3C3C3C),
                                ),
                              ),
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: Color(0xffFF5A5F),
                                child: Icon(
                                  Icons.message_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "₹ 24,999",
                            style: GoogleFonts.firaSans(
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: Color(0xff087E8B),
                            ),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Text(
                            "The Shure SM7B reigns as king of studio recording for \ngood reason: vocal recording and reproduction is clear \nand crisp, especially when recording in a more...",
                            style: GoogleFonts.firaSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color(0xff666666),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Make: Shure | Year: 2020",
                            style: GoogleFonts.firaSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xff4F4F4F),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Text(
                                "Within Warranty",
                                style: GoogleFonts.firaSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Color(0xff4F4F4F),
                                ),
                              ),
                              Icon(
                                Icons.check,
                                color: Color(0xff00A12D),
                              ),
                              Text(
                                ". Original Packing",
                                style: GoogleFonts.firaSans(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Color(0xff4F4F4F),
                                ),
                              ),
                              Icon(
                                Icons.clear,
                                color: Color(0xffD30000),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 19,
                          ),
                          Container(
                            height: 40,
                            width: 176,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset("assets/Google.png"),
                                    Text(
                                      "Search Details",
                                      style: GoogleFonts.firaSans(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        color: Color(0xff4F4F4F),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 51,
                          ),
                          Text(
                            "Similar products",
                            style: GoogleFonts.firaSans(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      SimilarProducts(),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 79,
              width: width,
              child: Row(
                children: [
                  Container(
                    height: 79,
                    alignment: Alignment.center,
                    width: width * 0.5,
                    color: Color(0xff727272),
                    child: Text(
                      "Save item",
                      style: GoogleFonts.firaSans(
                        color: Color(0xffECECEC),
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: width * 0.5,
                    height: 79,
                    color: Color(0xffFF5A5F),
                    child: Text(
                      "Buy Now",
                      style: GoogleFonts.firaSans(
                        color: Color(0xffECECEC),
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
