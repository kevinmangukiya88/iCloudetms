import 'package:get_storage/get_storage.dart';

class GetStorageServices {
  static final GetStorage _box = GetStorage();
  static const String _fcmToken = 'fcmToken';
  static const String userType = 'userType';
  static const String userid = 'userId';
  static const String login = 'login';

  /// Set FCM Token:
  static Future<void> setFcmToken(String fcmToken) async {
    await _box.write(_fcmToken, fcmToken);
  }

  static String getFcmToken() {
    return _box.read(_fcmToken) ?? '';
  }

  /// check partner or client

  static Future<void> setUserType(String userSelectType) async {
    await _box.write(userType, userSelectType);
  }

  static String getUserType() {
    return _box.read(userType) ?? '';
  }

  /// set id

  static Future<void> setUserId(String userSelectId) async {
    await _box.write(userid, userSelectId);
  }

  static String getUserId() {
    return _box.read(userid) ?? '';
  }

  /// set id

  static Future<void> setLogin(String isLogin) async {
    await _box.write(login, isLogin);
  }

  static String getLogin() {
    return _box.read(login) ?? '';
  }

  /// Log out (Erase all data):
  static Future<void> removeUserLogged() async {
    await _box.erase();
  }
}
