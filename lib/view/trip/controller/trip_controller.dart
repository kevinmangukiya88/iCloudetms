import 'package:get/get.dart';

class TripController extends GetxController{
  int selectIndex=0;
  selectTitleIndex(int val){
    selectIndex =val;
    update();
  }
}