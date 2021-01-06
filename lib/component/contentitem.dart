import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constant.dart';
class ItemContent extends StatelessWidget {
  final String title , shopName , svgSrc ;
  final Function press ;

  const ItemContent({Key key, this.title, this.shopName, this.svgSrc, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Container(
      margin: EdgeInsets.only(left: 20,right: 15 , top: 20 ,bottom: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow:[
            BoxShadow(offset: Offset(0,4),blurRadius: 20,color: Color(0xFFB0CCE1).withOpacity(0.32))
          ]
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press ,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(shape: BoxShape.circle,color: kPrimaryColor.withOpacity(0.13),),
                  child: SvgPicture.asset(svgSrc,width: size.width*0.18,),
                ),
                Text(title),
                SizedBox(height: 10,),
                Text(shopName,style: TextStyle(fontSize: 12),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
