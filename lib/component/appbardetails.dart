import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar appBarDetails(){
  return AppBar(
    elevation: 0,
    leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),onPressed: (){},),
    actions: [
      IconButton(icon: SvgPicture.asset('icons/share.svg'), onPressed: (){}),
      IconButton(icon: SvgPicture.asset('icons/more.svg'), onPressed: (){}),
    ],
  ) ;
}