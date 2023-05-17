import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginSigninButton extends StatelessWidget {
  const LoginSigninButton({
    super.key, required this.buttonName, required this.signInLogin,required this.onTap, required this.onTapbelow
  });
  final String buttonName;
   final String signInLogin;
   final void Function()? onTap;
   final void Function()? onTapbelow;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xffFF5A5F),
                Color(0xffC1839F),
              ]),
              borderRadius: BorderRadius.circular(22),
            ),
            width: double.infinity,
            height: 57,
            child: Center(
              child: Text(buttonName
                ,
                style: GoogleFonts.aclonica(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 32,
        ),
        Center(
          child: Row(
            children: [
              Text(
                "Dont have an account?",
                style: GoogleFonts.arimo(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff8D8D8D),
                ),
              ),
              TextButton(
                onPressed: onTapbelow,
                child: Text(
                  signInLogin,
                  style: GoogleFonts.arimo(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffFF5A5F),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 135,
        ),
      ],
    );
  }
}
