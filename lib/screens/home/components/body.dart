import 'package:flutter/material.dart';
import 'package:mazeboom/constants.dart';
import 'package:mazeboom/screens/home/components/recomedn_shoes.dart';

import 'my_header.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [Header(), RecomendsShoes()],
      ),
    );
  }
}
