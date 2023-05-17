import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FieldText extends StatelessWidget {
  const FieldText({
    super.key,required this.controller,required this.hintText,
  });

  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: TextField(
        controller: controller,


        style: GoogleFonts.darkerGrotesque(
          color: const Color(0xff6F6F6F),
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),

        decoration: InputDecoration(
          fillColor: Color(0xffDEDEDE),
          filled: true ,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(22),
              borderSide: const BorderSide(
                color: Color(0xffDEDEDE),


              )
          ),
          hintText: hintText,





        ),
      ),
    );
  }
}
