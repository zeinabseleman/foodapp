import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const SearchBox({this.onChanged});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.symmetric(horizontal: 25.0,vertical: 5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(color: kSecondColor.withOpacity(0.32))),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: SvgPicture.asset('icons/search.svg'),
          border: InputBorder.none,
          hintText: 'Search Here',
          hintStyle: TextStyle(color: kSecondColor)
      ),),
    );
  }
}
