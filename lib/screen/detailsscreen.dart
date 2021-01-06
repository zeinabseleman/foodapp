import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodapp/component/appbardetails.dart';
import 'package:foodapp/constant.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: appBarDetails(),
     body: Body()
    );
  }
}
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image(image: AssetImage('images/burger.png'),width: double.infinity,height: size.height*0.25 ,fit: BoxFit.fill,),
        Expanded(
            child:Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30), topLeft: Radius.circular(30))
              ),
              child: Column(
                children: [
                Row(
                  children: [
                    Icon(Icons.location_on,color: kSecondColor,),
                    SizedBox(width: 10,),
                    Text('MacDonalds')
                  ],
                ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child:Column(
                          children: [
                          Text('Cheese Burger' , style: Theme.of(context).textTheme.headline,),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                SmoothStarRating(
                                   rating: 4,
                                    borderColor: kPrimaryColor,
                                ),
                                SizedBox(width: 10,),
                                Text('24 reviews')
                              ],
                            ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                            
                          )
                        ),
                        ClipPath(
                          clipper: MycustomClipper(),
                          child: Container(
                            alignment: Alignment.topCenter,
                            padding: EdgeInsets.symmetric(vertical: 15),
                            height: 66,
                            width: 65,
                            color: kPrimaryColor,
                            child: Text('\$15' , style: Theme.of(context).textTheme.title.copyWith(color: Colors.white,fontWeight: FontWeight.bold),),
                          ),
                        )
                      ],
                    ),
                  ),
                  Text('I have been visited every weekend. And it\'s a nice place to eats without any disturbance. And make me relax. I love a spicy chicken and kebab wrap lover. Whenever I visit McDonalds I placed this order. And I love that McDonalds black forest as desserts',
                    style: TextStyle(height: 1.5),
                  ),
                  SizedBox(height: size.height* 0.1,),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: size.width*0.8,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: (){},
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('icons/bag.svg'),
                              SizedBox(width: 10,),
                              Text('Order Now',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
        )
      ],
    );
  }
}
class MycustomClipper extends CustomClipper<Path>{
  @override
  getClip(Size size) {
   Path path = Path();
   double ignoreheight= 20;
   path.lineTo(0, size.height-ignoreheight);
   path.lineTo(size.width/2, size.height);
   path.lineTo(size.width, size.height-ignoreheight);
   path.lineTo(size.width, 0);
   path.close();
   return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false ;
  }

}
