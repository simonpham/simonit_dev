import 'package:flutter/material.dart';
import 'package:simonit_dev/views/widgets/header.dart';
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
            children: <Widget>[
              _buildAboutHeader().addMarginTop(3),
              _buildCurrentlyWritingHeader().addMarginTop(),
              _buildLinksHeader().addMarginTop(),
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

  Widget _buildCurrentlyWritingHeader() {
    return SectionHeader(
      title: "Currently writing",
      subtitle: "(Via WakaTime)",
    );
  }

  Widget _buildLinksHeader() {
    return SectionHeader(
      title: "Links",
    );
  }
}
