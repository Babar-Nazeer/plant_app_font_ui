import 'package:flutter/material.dart';

import 'constant.dart';

class featureplants extends StatelessWidget {
  const featureplants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          feature(image: ('images/bottom_img_1.png'), press: () {}),
          feature(image: ('images/1.png'), press: () {}),
        ],
      ),
    );
  }
}

class feature extends StatelessWidget {
  const feature({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press(),
      child: Container(
        margin: EdgeInsets.only(
            left: kdefaultpadding,
            top: kdefaultpadding / 2,
            bottom: kdefaultpadding / 2),
        width: size.width * 0.8,
        height: 120,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
