import 'package:get/get.dart';
import 'package:cat_app/home_page/home_page_wrapper.dart';

class AppRoutes {
  static const String homePageWrapper = '/home_page_wrapper';
}

class AppPages {
  static final pages = [
    /// Main Routes
    GetPage(
      name: AppRoutes.homePageWrapper,
      page: () => const HomePageWrapper(),
    ),
  ];

}
