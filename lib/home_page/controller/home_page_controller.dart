import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SolicitudController extends GetxController {

  // Variables
  late String _catUrl;
  late Widget _widget;

  // Getters
  String get catUrl => _catUrl;
  Widget get widget => _widget;

  @override
  void onInit() {
    _catUrl = 'https://cataas.com/cat/gif';
    _widget = Container();
    super.onInit();
  }

  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 1), () {
      _widget = CachedNetworkImage(
        imageUrl: catUrl,
        placeholder: (context, url) => const CircularProgressIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      );
      update();
    });
    super.onReady();
  }

  void refreshImage() async {
    await CachedNetworkImage.evictFromCache(catUrl);
    _widget = const CircularProgressIndicator();
    update();
    Future.delayed(const Duration(seconds: 1), () {
      _widget = CachedNetworkImage(
        imageUrl: catUrl,
        fit: BoxFit.scaleDown,
        placeholder: (context, url) => const CircularProgressIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      );
      update();
    });
    update();
  }

}
