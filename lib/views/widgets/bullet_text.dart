import 'package:flutter/material.dart';

import 'package:simonit_dev/utils/extensions.dart';

class BulletText extends StatelessWidget {
  final String text;

  const BulletText(
    this.text, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        _buildBullet(),
        _buildText().addMarginLeft(),
      ],
    );
  }

  Widget _buildBullet() {
    return Text(
      "*",
      style: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(192, 192, 192, 1.0),
      ),
    );
  }

  Widget _buildText() {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16.0,
      ),
    );
  }
}
