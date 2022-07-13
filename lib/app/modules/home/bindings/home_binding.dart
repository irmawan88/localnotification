import 'package:flutter_local_notifications_9/app/controllers/notifikasi_controller.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<NotifikasiController>(
      () => NotifikasiController(),
    );
  }
}
