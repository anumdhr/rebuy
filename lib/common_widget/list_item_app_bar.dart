import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screen/navigation_screen/navigation_screen.dart';
import '../screen/sidebar_screen/sidebar_screen.dart';

class ListItemAppBar extends StatelessWidget {
  const ListItemAppBar({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 40),
      height: 100,
      width: MediaQuery.of(context).size.width,

      child: Row(
        children: [
          Container(
            height: 46,
            width: 46,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Color(0xff555555),
                width: 1,
              ),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return NavigationPage();
                  },
                ));
              },
              child: Icon(Icons.arrow_back_ios_rounded),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Text(
            text,
            style: GoogleFonts.firaSans(
              fontWeight: FontWeight.w700,
              fontSize: 32,
            ),
          ),
          Spacer(
            flex: 6,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SideBarPage();
                  },
                ),
              );
            },
            child: Icon(Icons.menu),
          )
        ],
      ),
    );
  }
}
