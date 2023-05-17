import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFields extends StatelessWidget {
  const TextFields({
    super.key, required this.title, required this.hintText, required this.controller,
  });
  final TextEditingController controller;
   final String title;
  final  String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.firaSans(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Color(0xff3C3C3C),
          ),
        ),
        TextField(
          controller: controller,
          style: GoogleFonts.firaSans(
            fontWeight: FontWeight.w300,
            fontSize: 18,
            color: Color(0xff656565),
          ),
          decoration: InputDecoration(
            hintMaxLines: 4,
            filled: true,
            fillColor: Color(0xffEAEAEA),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Color(0xffEAEAEA),
              ),
            ),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: Color(0xffEAEAEA),
                )),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: Color(0xffEAEAEA),
                )),
            hintText: hintText,
            suffixIcon: Icon(Icons.edit_calendar_outlined),
          ),
        ),
      ],
    );
  }
}
