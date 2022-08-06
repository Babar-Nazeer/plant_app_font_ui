import 'package:app/components/body.dart';
import 'package:app/navigationbar.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

class carts extends StatelessWidget {
  const carts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          recomendplantcard(
            image: "images/BABA.png",
            title: "SAMANTHA",
            country: "RUSSIA",
            price: 440,
            press: () {},
          ),
          recomendplantcard(
            image: "images/image_2.png",
            title: "ANGALINA",
            country: "RUSSIA",
            price: 440,
            press: () {},
          ),
          recomendplantcard(
            image: "images/image_3.png",
            title: "ROSE",
            country: "RUSSIA",
            price: 440,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class recomendplantcard extends StatelessWidget {
  const recomendplantcard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kdefaultpadding,
          top: kdefaultpadding / 2,
          bottom: kdefaultpadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
          ),
          GestureDetector(
            onTap: press(),
            child: Container(
              padding: EdgeInsets.all(kdefaultpadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        color: kprimarycolor.withOpacity(0.6),
                        blurRadius: 80,
                        offset: Offset(0, 10))
                  ]),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: ('$title\n'),
                        style: TextStyle(color: Colors.black, fontSize: 12)),
                    TextSpan(
                        text: '$country'.toUpperCase(),
                        style: TextStyle(
                            color: kprimarycolor.withOpacity(0.5),
                            fontSize: 12))
                  ])),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: TextStyle(
                        color: kprimarycolor.withOpacity(.6), fontSize: 12),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
