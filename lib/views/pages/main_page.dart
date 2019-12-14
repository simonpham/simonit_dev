import 'package:flutter/material.dart';
import 'package:simonit_dev/constants/strings.dart';
import 'package:simonit_dev/views/widgets/header.dart';
import 'package:simonit_dev/views/widgets/section_content.dart';
import 'package:simonit_dev/views/widgets/section_header.dart';

import 'package:simonit_dev/utils/extensions.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        elevation: 0.0,
        centerTitle: true,
        title: Header(Str.headerTitle),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildAboutHeader().addMarginTop(3),
              _buildAboutSection(),
              _buildCurrentlyWritingHeader().addMarginTop(1),
              _buildCurrentlyWritingSection(),
              _buildLinksHeader().addMarginTop(1),
              _buildLinksSection(),
            ],
          ).wrapWithContainer(),
        ),
      ),
    );
  }

  Widget _buildAboutHeader() {
    return SectionHeader(
      title: Str.aboutTitle,
      subtitle: Str.aboutSubtitle,
    );
  }

  Widget _buildAboutSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SectionContent(Str.aboutSection1),
        SectionContent(Str.aboutSection2),
      ],
    );
  }

  Widget _buildCurrentlyWritingHeader() {
    return SectionHeader(
      title: Str.currentlyWritingTitle,
      subtitle: Str.currentlyWritingSubtitle,
    );
  }

  Widget _buildCurrentlyWritingSection() {
    return Container();
  }

  Widget _buildLinksHeader() {
    return SectionHeader(
      title: Str.linksTitle,
    );
  }

  Widget _buildLinksSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[],
    );
  }
}
