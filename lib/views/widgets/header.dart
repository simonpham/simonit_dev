import 'package:flutter/material.dart';

import 'package:simonit_dev/utils/extensions.dart';

class Header extends StatelessWidget {
  final String text;

  const Header(
    this.text, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.left,
    ).wrapWithContainer();
  }
}
