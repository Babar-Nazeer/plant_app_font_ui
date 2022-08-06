import 'package:app/constant.dart';
import 'package:flutter/material.dart';

class navigationbar extends StatelessWidget {
  const navigationbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 40,
            color: kprimarycolor.withOpacity(.8))
      ]),
      child: Padding(
        padding: const EdgeInsets.only(
            left: kdefaultpadding, right: kdefaultpadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.star,
              color: kprimarycolor,
            ),
            Icon(
              Icons.heart_broken_rounded,
              color: kprimarycolor,
            ),
            Icon(
              Icons.person,
              color: kprimarycolor,
            )
          ],
        ),
      ),
    );
  }
}
