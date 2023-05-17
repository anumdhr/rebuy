import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rebuy/screen/my_account_screen/widgets/textField.dart';
import '../../common_widget/home_top_bar.dart';
import '../home_screen/my_home_page.dart';

class MyAccountPage extends StatelessWidget {
  MyAccountPage({Key? key}) : super(key: key);
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController address = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeApBar(
                text: Text(
                  "Alice Eve",
                  style: GoogleFonts.firaSans(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffFF5A5F),
                  ),
                ),
                subname: Text(
                  "alice.eve@gmail.com",
                  style: GoogleFonts.firaSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: const Color(0xff979797),
                  ),
                ),
                trailingIcon: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return MyHomePage();
                        },
                      ),
                    );
                  },
                  child: const Icon(
                    Icons.clear,
                    color: Color(0xff3C3C3C),
                    size: 40,
                  ),
                ),
              ),
              const SizedBox(
                height: 53,
              ),
              Text(
                "My account",
                style: GoogleFonts.firaSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: const Color(0xff3C3C3C),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFields(
                controller: name,
                title: "Name:",
                hintText: "Alice Eve",
              ),
              TextFields(
                controller: email,
                title: "Email:",
                hintText: "alice.eve@gmail.com",
              ),
              TextFields(
                controller: phone,
                title: "Phone:",
                hintText: "+1 561-230-0033",
              ),
              TextFields(
                controller: address,
                title: "Address",
                hintText:
                    " Alice Eve\n 2074, Half and Half Drive\n Hialeah, Florida - 33012 \nPh: +1 561-230-0033"
                    "",
              ),
              SizedBox(
                height: 32,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 44,
                  width: 165,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Color(0xff3C3C3C),
                        width: 2,
                      )),
                  child: Row(
                    children: [
                      Icon(
                        Icons.settings,
                        color: Color(0xff3C3C3C),
                      ),
                      Text(
                        "Settings",
                        style: GoogleFonts.firaSans(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff3C3C3C),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
