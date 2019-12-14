import 'package:flutter/material.dart';

import 'package:simonit_dev/utils/extensions.dart';

class SectionContent extends StatelessWidget {
  final String text;

  const SectionContent(
    this.text, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16.0,
      ),
    ).addPaddingVertical();
  }
}
