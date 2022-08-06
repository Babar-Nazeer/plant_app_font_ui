import 'package:flutter/material.dart';

import 'constant.dart';

class titlewithmorebtn extends StatelessWidget {
  const titlewithmorebtn({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kdefaultpadding),
      child: Row(
        children: [
          titlewithunderline(
            text: title,
          ),
          Spacer(),
          FlatButton(
            onPressed: () {},
            child: Text(
              'More',
              style: TextStyle(color: Colors.white),
            ),
            color: kprimarycolor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          )
        ],
      ),
    );
  }
}

class titlewithunderline extends StatelessWidget {
  const titlewithunderline({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kdefaultpadding / 4),
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              margin: EdgeInsets.only(right: kdefaultpadding / 4),
              height: 7,
              color: kprimarycolor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
