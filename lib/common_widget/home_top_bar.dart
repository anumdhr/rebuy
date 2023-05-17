import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screen/sidebar_screen/sidebar_screen.dart';

class HomeApBar extends StatefulWidget {
  const HomeApBar({Key? key, required this.text, required this.subname, required this.trailingIcon}) : super(key: key);
  final Widget text;
  final Widget subname;
  final Widget trailingIcon;

  @override
  State<HomeApBar> createState() => _HomeApBarState();
}

class _HomeApBarState extends State<HomeApBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {},
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 35,
            child: Image.asset(
              "assets/User imageeee.png",
              // fit: BoxFit.none,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget.text,
            widget.subname,

          ],
        ),
        widget.trailingIcon,
      ],
    );
  }
}
