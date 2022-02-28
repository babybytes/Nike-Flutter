import 'package:flutter/material.dart';
import 'package:mazeboom/screens/details/details_screen.dart';

import '../../../constants.dart';

class RecomendsShoes extends StatelessWidget {
  const RecomendsShoes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 2),
            child: ShoesCard(
              image: "assets/images/image_1.png",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailsScreen(),
                  ),
                );
              },
            ),
          ),
          ShoesCard(
            image: "assets/images/image_2.png",
            press: () {},
          ),
          ShoesCard(
            image: "assets/images/image_3.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class ShoesCard extends StatelessWidget {
  const ShoesCard({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String image;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.8,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
