import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../models/sidebar_model.dart';
import '../sign_in_page/signin_page.dart';

class SideBarPage extends StatelessWidget {
  const SideBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ReBuy",
                        style: GoogleFonts.dosis(
                          color: const Color(0xff3C3C3C),
                          fontWeight: FontWeight.w800,
                          fontSize: 32,
                        ),
                      ),
                      Container(
                        // margin: EdgeInsets.all(15),
                        height: 46,
                        width: 46,

                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.clear,
                            color: Color(0xff555555),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ListView.separated(
                  separatorBuilder: (context, index) =>
                      Divider(color: Colors.transparent),
                  shrinkWrap: true,
                  itemCount: listTileModel.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return listTileModel[index].pages;
                          },
                        ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffD4E4E6),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 88,
                        child: ListTile(
                          leading: listTileModel[index].leadingIcon,
                          title: Text(
                            listTileModel[index].title,
                            style: GoogleFonts.firaSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                              color: Color(0xff5F5F5F),
                            ),
                          ),
                          subtitle: Text(
                            listTileModel[index].subTitle,
                            style: GoogleFonts.firaSans(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: Color(0xff5F5F5F),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 44,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  side: BorderSide(
                                    color: Color(0xff3C3C3C),
                                    width: 2,
                                  ))),
                          onPressed: () {},
                          child: Text(
                            "Feedback",
                            style: GoogleFonts.firaSans(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 44,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff3C3C3C),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              )),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return SignInPage();
                              },
                            ));
                          },
                          child: Text("Sign Out"),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 95,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    "assets/bottomimage.png",
                    fit: BoxFit.fill,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
