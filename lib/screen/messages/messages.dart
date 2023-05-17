import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common_widget/list_item_app_bar.dart';
import '../../common_widget/search_bar.dart';
import '../../models/mesage_model.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          children: [
            ListItemAppBar(
              text: "Messages",
            ),
            SearchBar(width: width, hinttext: "Search in messages"),
            Expanded(
              child: Container(
                height: 90,
                child: ListView.separated(
                  shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.transparent,
                                radius: 40,
                                child: Image.asset(messageModel[index].image,fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(messageModel[index].productName,
                                          style: GoogleFonts.firaSans(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: Color(0xff3C3C3C),
                                          ),
                                      ),
                                      Text(messageModel[index].user,
                                        style: GoogleFonts.firaSans(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          color: Color(0xff828282),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(messageModel[index].message,
                                    style: GoogleFonts.firaSans(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xff8A8A8A),
                                    ),
                                  ),

                                ],
                              ),
                              Spacer(),
                              Expanded(child: Text(messageModel[index].date,
                                style: GoogleFonts.firaSans(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12,
                                  color: Color(0xff828282),
                                ),
                              )),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
                    itemCount: messageModel.length),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
