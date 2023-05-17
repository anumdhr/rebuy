import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/product_model.dart';
import '../product_page.dart';

class SimilarProducts extends StatelessWidget {
  const SimilarProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 255,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return ProductPage(
                //         index: index,
                //       );
                //     },
                //   ),
                // );
              },
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
                              productModel[index].image,
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
                                    productModel[index].productName,
                                    style: GoogleFonts.firaSans(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color:
                                      const Color(0xff3C3C3C),
                                    ),
                                  ),
                                  Text(
                                    productModel[index].dateandbrand,
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
                                productModel[index].price,
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
          itemCount: listModel.length),
    );
  }
}

// Image.asset(
// listModel[index].image,
// fit: BoxFit.fill,
// ),
