import 'package:flutter/material.dart';

import 'constant.dart';

class HeaderWithSearchBar extends StatelessWidget {
  const HeaderWithSearchBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kdefaultpadding),
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
                left: kdefaultpadding, right: kdefaultpadding, bottom: 40),
            alignment: Alignment.center,
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
                color: Color(0xff0c9869),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kprimarycolor.withOpacity(.9))
                ]),
            child: Row(
              children: [
                Text(
                  'Hi Uishopy!',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                Spacer(),
                Image(
                  image: AssetImage('assets/images/logo.png'),
                  width: 50,
                )
              ],
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: kdefaultpadding),
                padding: EdgeInsets.symmetric(horizontal: kdefaultpadding),
                height: 54,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: 'search',
                      hintStyle:
                          TextStyle(color: kprimarycolor.withOpacity(0.3)),
                      suffixIcon: Icon(
                        Icons.search,
                        color: kprimarycolor.withOpacity(.3),
                      )),
                ),
              ))
        ],
      ),
    );
  }
}
