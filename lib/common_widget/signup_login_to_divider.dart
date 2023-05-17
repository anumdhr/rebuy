import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screen/login_screen/Widgets/social_media.dart';

class SignupLoginToDivider extends StatelessWidget {
  const SignupLoginToDivider({
    super.key, this.signup_login, this.signup_login_details,
  });
  final signup_login;
  final signup_login_details;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          signup_login,
          style: GoogleFonts.dosis(
            fontSize: 48,
            fontWeight: FontWeight.w800,
            color: const Color(0xff3C3C3C),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          signup_login_details,
          style: GoogleFonts.akayaTelivigala(
            fontWeight: FontWeight.w200,
            fontSize: 14,
            color: const Color(0xff828282),
          ),
        ),
        if (MediaQuery.of(context).size.width > 400)
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 52),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SocialMedia(
                  image: "assets/Google.svg",
                ),
                SocialMedia(image: "assets/Twitter.svg"),
                SocialMedia(image: "assets/apple.svg"),
              ],
            ),
          ),
        if (MediaQuery.of(context).size.width < 400)
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 52),
            child: Column(
              children: const [
                SocialMedia(
                  image: "assets/Google.svg",
                ),
                SocialMedia(image: "assets/Twitter.svg"),
                SocialMedia(image: "assets/apple.svg"),
              ],
            ),
          ),
        Row(
          children: const [
            Expanded(
              child: Divider(
                color: Color(0xff555555),
              ),
            ),
            Text("OR"),
            Expanded(
              child: Divider(
                color: Color(0xff555555),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

