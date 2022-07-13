import 'package:get/get.dart';

import '../controllers/kedua_controller.dart';

class KeduaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KeduaController>(
      () => KeduaController(),
    );
  }
}
