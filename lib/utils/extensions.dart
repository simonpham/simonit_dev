import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

extension ExtendedWidget on Widget {
  Widget wrapWithContainer() {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      constraints: BoxConstraints(
        maxWidth: 500.0,
      ),
      child: this,
    );
  }

  Widget addMarginTop([int factor = 2]) {
    return Container(
      margin: EdgeInsets.only(top: 8.0 * factor),
      child: this,
    );
  }

  Widget addMarginLeft([int factor = 1]) {
    return Container(
      margin: EdgeInsets.only(left: 8.0 * factor),
      child: this,
    );
  }

  Widget addPaddingVertical([int factor = 1]) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0 * factor),
      child: this,
    );
  }

  Widget wrapLink([String url]) {
    if (url == null || url.isEmpty) {
      return this;
    }
    return InkWell(
      onTap: () {
        js.context.callMethod("open", [url]);
      },
      child: this,
    );
  }
}
