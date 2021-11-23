import 'package:cat_app/home_page/controller/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageDesktop extends StatelessWidget {
  const HomePageDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SolicitudController>(
      init: SolicitudController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child:  _.widget
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => _.refreshImage(),
            child: const Icon(Icons.refresh),
          ),
        );
      },
    );
  }

}
