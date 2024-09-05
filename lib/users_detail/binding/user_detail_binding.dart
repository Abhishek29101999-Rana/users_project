import 'package:get/get.dart';
import 'package:users_project/users_detail/controller/user_detail_controller.dart';

class UserDetailBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(UserDetailController());
  }

}