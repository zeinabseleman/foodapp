import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodapp/constant.dart';

AppBar homeAppBar(BuildContext context){
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(icon: SvgPicture.asset('icons/menu.svg') ,
        onPressed: (){}),
    title: Center(
      child: RichText(
        text: TextSpan(
            style: Theme.of(context).textTheme.title.copyWith(fontWeight: FontWeight.bold),
            children:[
              TextSpan(text: 'Punk' , style: TextStyle(color: kSecondColor)),
              TextSpan(text: 'Food' , style: TextStyle(color: kPrimaryColor)),
            ]
        ),
      ),
    ),
    actions: [IconButton(icon: SvgPicture.asset('icons/notification.svg'), onPressed: (){})],
  );
}
