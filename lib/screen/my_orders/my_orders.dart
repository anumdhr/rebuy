import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../common_widget/list_item_app_bar.dart';
import '../../models/listing_model.dart';

class MyOrderPage extends StatelessWidget {
  const MyOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            children: [
              ListItemAppBar(
                text: "My Orders",
              ),
              SizedBox(
                height: 15,
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
                                listingModel[index].image,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      listingModel[index].productName,
                                      style: GoogleFonts.firaSans(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xff616161),
                                      ),
                                    ),
                                    Text(
                                      listingModel[index].date,
                                      style: GoogleFonts.firaSans(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff898989),
                                      ),
                                    ),
                                    Text(
                                      "₹" "${listingModel[index].price}",
                                      style: GoogleFonts.firaSans(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff616161),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                            Container(
                              height: 30,
                              width: 88,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color(0xff3C3C3C),
                              ),
                              child: TextButton(onPressed: () {

                              }, child: Text("Rate now",
                                style: GoogleFonts.firaSans(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),),
                              
                              
                            ),
                            ],
                          ),
                        ),
                      );
                      
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        height: 5,
                      );
                    },
                    itemCount: listingModel.length),
              )
            ],
          ),
        ),
      ),
    );
  }
}
