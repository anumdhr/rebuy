import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginTopBar extends StatelessWidget {
  const LoginTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 100,
      width: MediaQuery.of(context).size.width,
      // color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // margin: EdgeInsets.all(15),
            height: 46,
            width: 46,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: const Color(0xff555555),
                width: 1,
              ),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Color(0xff555555),
              ),
            ),
          ),
          Text("ReBuy",
              style: GoogleFonts.dosis(
                color: const Color(0xff3C3C3C),
                fontWeight: FontWeight.w800,
                fontSize: 32,
              ))
        ],
      ),
    );
  }
}
