import 'package:driver_mobile/view/auth/controller/login_controller.dart';
import 'package:driver_mobile/view/bottomBar/controller/bottombar_controller.dart';
import 'package:driver_mobile/view/trip/controller/trip_controller.dart';
import 'package:get/get.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomBarController(), fenix: true);
    Get.lazyPut(() => TripController(), fenix: true);
    Get.lazyPut(() => AuthController(), fenix: true);
  }
}
