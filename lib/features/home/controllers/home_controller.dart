import 'package:get/get.dart';
import '../../../core/services/storage_service.dart';

class HomeController extends GetxController {
  final StorageService _storageService = Get.find<StorageService>();

  // Observable variables
  final RxInt counter = 0.obs;
  final RxBool isLoading = false.obs;
  final RxString title = 'Flutter Demo Home Page'.obs;

  @override
  void onInit() {
    super.onInit();
    _loadInitialData();
  }

  // Methods
  void incrementCounter() {
    counter.value++;
  }

  void decrementCounter() {
    if (counter.value > 0) {
      counter.value--;
    }
  }

  void resetCounter() {
    counter.value = 0;
  }

  void updateTitle(String newTitle) {
    title.value = newTitle;
  }

  Future<void> _loadInitialData() async {
    isLoading.value = true;
    try {
      // Simulate API call
      await Future.delayed(const Duration(seconds: 1));

      // Load data from storage
      final userData = _storageService.getUserData();
      if (userData != null) {
        // Process user data if needed
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to load data: $e');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> refreshData() async {
    await _loadInitialData();
  }
}
