import 'package:flutter/material.dart';

class body1 extends StatefulWidget {
  const body1({Key? key}) : super(key: key);

  @override
  State<body1> createState() => _body1State();
}

class _body1State extends State<body1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Expanded(
            child: Column(
          children: [
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('images\img.png'))),
            )
          ],
        ))
      ],
    );
  }
}
