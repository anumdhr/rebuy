import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../common_widget/list_item_app_bar.dart';
import '../../models/listing_model.dart';

class MyListingPage extends StatelessWidget {
  const MyListingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          children: [
            ListItemAppBar(
              text: "My Listing",
            ),
            SizedBox(
              height: 44,
            ),
            Expanded(
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 5),
                      height: 114,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color.fromRGBO(8, 126, 139, 0.14),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 12),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset(
                              myListingModel[index].image,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(myListingModel[index].productName,
                                  style: GoogleFonts.firaSans(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xff616161),
                                  ),
                                ),
                                // Text(myListingModel[index].date),
                                // Text(myListingModel[index].price),
                                Row(
                                  children: [
                                    Text('${myListingModel[index].views}',
                                      style: GoogleFonts.firaSans(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff898989),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      height: 20,
                                      padding: EdgeInsets.symmetric(horizontal: 2),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(
                                            Icons.message_outlined,
                                            size: 15,
                                          ),
                                          Text(
                                            ' ${myListingModel[index].number}',
                                            style: GoogleFonts.firaSans(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(myListingModel[index].price,
                                      style: GoogleFonts.firaSans(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color:Colors.blue ,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(myListingModel[index].date,
                                      style: GoogleFonts.firaSans(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.pinkAccent,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Spacer(),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 20,
                              child: Icon(
                                Icons.remove_red_eye_rounded,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: myListingModel.length),
            )
          ],
        ),
      ),
    ));
  }
}
