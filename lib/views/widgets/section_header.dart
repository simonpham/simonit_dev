import 'package:flutter/material.dart';

import 'package:simonit_dev/utils/extensions.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String? subtitleLink;

  const SectionHeader({
    super.key,
    required this.title,
    this.subtitle,
    this.subtitleLink,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        _buildArrow(),
        _buildTitle().addMarginLeft(),
        _buildSubtitle().addMarginLeft(),
      ],
    ).addPaddingVertical();
  }

  Widget _buildArrow() {
    return Text(
      ">",
      style: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(192, 192, 192, 1.0),
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      title,
      style: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildSubtitle() {
    final subtitle = this.subtitle;
    if (subtitle == null || subtitle.isEmpty) {
      return SizedBox();
    }
    final subtitleLink = this.subtitleLink;
    return Text(
      subtitle,
      style: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.w400,
        color: Color.fromRGBO(192, 192, 192, 1.0),
      ),
    ).wrapLink(subtitleLink);
  }
}
