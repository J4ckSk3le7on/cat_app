import 'package:cat_app/home_page/pages/home_page_desktop.dart';
import 'package:cat_app/home_page/pages/home_page_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePageWrapper extends StatelessWidget {
  const HomePageWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
        mobile: (BuildContext context) => const HomePageMobile(),
        desktop: (BuildContext context) => const HomePageDesktop(),
        tablet: (BuildContext context) => const HomePageMobile()
    );
  }

}
