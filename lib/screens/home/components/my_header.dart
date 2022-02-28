import 'package:flutter/material.dart';

import '../../../constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: kDefaultPadding, top: kDefaultPadding / 2),
          child: Text(
            'Shoes',
            style: Theme.of(context).textTheme.headline5?.copyWith(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 35),
          ),
        ),
      ],
    );
  }
}
