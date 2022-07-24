import 'package:flutter/material.dart';

import 'package:web_responsive/media/breakpoint.dart';
import 'package:web_responsive/pages/home/widgets/appbar/mobile_app_bar.dart';
import 'package:web_responsive/pages/home/widgets/appbar/web_app_bar.dart';
import 'package:web_responsive/pages/home/widgets/section/top_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: constraints.maxWidth < mobileBreakpoint
              ? const PreferredSize(
                  preferredSize: Size(double.infinity, 56),
                  child: MobileAppBar(),
                )
              : const PreferredSize(
                  preferredSize: Size(double.infinity, 72),
                  child: WebAppBar(),
                ),
          drawer: constraints.maxWidth < mobileBreakpoint ? const Drawer() : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1400),
              child: ListView(
                children: const [
                  TopSection(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
