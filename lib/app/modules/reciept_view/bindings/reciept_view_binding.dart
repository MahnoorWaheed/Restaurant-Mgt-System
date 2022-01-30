import 'package:get/get.dart';

import '../controllers/reciept_view_controller.dart';

class RecieptViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RecieptViewController>(
      () => RecieptViewController(),
    );
  }
}
