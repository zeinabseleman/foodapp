import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      width: double.infinity,
      height: 75,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(offset: Offset(0,-7),blurRadius: 33,color: Color(0xFF6DAED9).withOpacity(0.11))
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(icon: SvgPicture.asset('icons/home.svg'), onPressed: (){}),
          IconButton(icon: SvgPicture.asset('icons/Following.svg'), onPressed: (){}),
          IconButton(icon: SvgPicture.asset('icons/Glyph.svg'), onPressed: (){}),
          IconButton(icon: SvgPicture.asset('icons/person.svg'), onPressed: (){}),

        ],
      ),
    );
  }
}
