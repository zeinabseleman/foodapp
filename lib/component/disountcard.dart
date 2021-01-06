import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant.dart';

class DiscountCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Offers & Discounts' ,style: TextStyle(fontWeight:FontWeight.bold,color: kTextColor),),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            height: 166,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/beyond-meat-mcdonalds.png')
                )
              ),
            child: DecoratedBox(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(colors: [Color(0xFFFF961F).withOpacity(0.7),kPrimaryColor.withOpacity(0.7)]
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(child: SvgPicture.asset('icons/macdonalds.svg')),
                    Expanded(child: RichText(
                      text: TextSpan(style: TextStyle(color: Colors.white),
                        children: [
                          TextSpan(text: 'Get Discount Of\n',style: TextStyle(fontSize: 16)),
                          TextSpan(text: '30% \n',style: TextStyle(fontSize: 43,fontWeight: FontWeight.bold)),
                          TextSpan(text: 'at MacDonald\'s on your first order & Instant cashback',style: TextStyle(fontSize: 10)),
                        ]
                      ),
                    )
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

