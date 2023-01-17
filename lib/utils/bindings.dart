import 'package:get/get.dart';
import 'package:nasa_app/controllers/root_controller.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RootController(), fenix: true);
  }
}
