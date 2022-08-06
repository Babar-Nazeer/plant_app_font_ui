import 'dart:html';

import 'package:app/constant.dart';
import 'package:app/title_with_morebtn.dart';
import 'package:flutter/material.dart';

import 'Header_With_searchbar.dart';
import 'carts.dart';
import 'featureplants.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(
      children: [
        HeaderWithSearchBar(size: size),
        titlewithmorebtn(
          title: "Recomended",
          press: () {},
        ),
        carts(),
        titlewithmorebtn(
          press: () {},
          title: "Feacture Plants",
        ),
        featureplants(),
        SizedBox(
          height: kdefaultpadding,
        )
      ],
    ));
  }
}
