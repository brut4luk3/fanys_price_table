import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import '../constants/app_constants.dart';

class StorageService extends GetxService {
  late GetStorage _storage;

  @override
  void onInit() {
    super.onInit();
    _storage = GetStorage();
  }

  // Generic methods
  Future<void> write(String key, dynamic value) async {
    await _storage.write(key, value);
  }

  T? read<T>(String key) {
    return _storage.read<T>(key);
  }

  Future<void> remove(String key) async {
    await _storage.remove(key);
  }

  Future<void> clear() async {
    await _storage.erase();
  }

  // Specific methods for app data
  Future<void> saveUserToken(String token) async {
    await write(AppConstants.userTokenKey, token);
  }

  String? getUserToken() {
    return read<String>(AppConstants.userTokenKey);
  }

  Future<void> saveUserData(Map<String, dynamic> userData) async {
    await write(AppConstants.userDataKey, userData);
  }

  Map<String, dynamic>? getUserData() {
    return read<Map<String, dynamic>>(AppConstants.userDataKey);
  }

  Future<void> clearUserData() async {
    await remove(AppConstants.userTokenKey);
    await remove(AppConstants.userDataKey);
  }
}
