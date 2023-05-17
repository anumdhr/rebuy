import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({
    super.key,required this.image
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 57,
      width: 105,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Color(0xffDEDEDE),

      ),
      child: SvgPicture.asset(image),
    );
  }
}
