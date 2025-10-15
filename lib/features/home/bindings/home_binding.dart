import 'package:get/get.dart';
import '../../../core/services/api_service.dart';
import '../../../core/services/storage_service.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // Register services
    Get.lazyPut<ApiService>(() => ApiService());
    Get.lazyPut<StorageService>(() => StorageService());

    // Register controller
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
