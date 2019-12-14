import 'package:flutter/material.dart';
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
        title: Header("#!/simonpham"),
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
      title: "About",
      subtitle: "(Location: Ho Chi Minh City, Vietnam)",
    );
  }

  Widget _buildAboutSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SectionContent(
            "Mobile developer, specialized in Android (Kotlin), Flutter and React Native."),
        SectionContent("Working as a full-stack mobile developer at HasBrain"),
      ],
    );
  }

  Widget _buildCurrentlyWritingHeader() {
    return SectionHeader(
      title: "Currently writing",
      subtitle: "(Via WakaTime)",
    );
  }

  Widget _buildCurrentlyWritingSection() {
    return Container();
  }

  Widget _buildLinksHeader() {
    return SectionHeader(
      title: "Links",
    );
  }

  Widget _buildLinksSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
      ],
    );
  }
}
