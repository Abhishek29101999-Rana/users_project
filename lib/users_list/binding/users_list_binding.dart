import 'package:get/get.dart';
import 'package:users_project/users_list/controller/users_list_controller.dart';

class UsersListBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(UsersListController());
  }
}


