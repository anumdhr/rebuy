import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreType extends StatelessWidget {
  ExploreType({super.key, required this.text});

  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 30,
      width: 95,
      margin: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xff3C3C3C),
      ),
      child: Text(text,
        style: GoogleFonts.duruSans(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    );
  }
}
