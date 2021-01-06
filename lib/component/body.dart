import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodapp/component/categoryitem.dart';
import 'package:foodapp/component/contentitem.dart';
import 'package:foodapp/component/disountcard.dart';
import 'package:foodapp/component/textfield.dart';
import 'package:foodapp/constant.dart';
import 'package:foodapp/screen/detailsscreen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      SearchBox(onChanged: (value){},),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             CategoryItem(title: 'Combo Meal' ,isActive: true , press: (){},),
              CategoryItem(title: 'Chicken' , press: (){},),
              CategoryItem(title: 'Beverages'  , press: (){},),
              CategoryItem(title: 'Snacks & Sides'  , press: (){},)
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ItemContent(title: 'Burger',shopName: 'MacDonald\'s ',svgSrc: 'icons/burger.svg',
                press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){return DetailScreen();}));
                },
              ),
              ItemContent(title: 'Chinese & Noodles',shopName: 'Windy ',press: (){},svgSrc: 'icons/chinese_noodles.svg',),
              ItemContent(title: 'Burger',shopName: 'MacDonald\'s ',press: (){},svgSrc: 'icons/burger.svg',)
            ],
          ),
        ),
            DiscountCard(),
      ],
    );
  }
}
