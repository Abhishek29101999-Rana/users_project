import 'package:get/get.dart';
import 'package:users_project/users_list/model/user_model.dart';

class UserDetailController extends GetxController{
  User userModel =User(id: 0, name: '', username: '', email: '', address: Address(street: '', suite: '', city: '', zipcode: '', geo: Geo(lat: '', lng: '')), phone: '', website: '', company: Company(name: '', catchPhrase: '', bs: ''));
  @override
  void onInit()  {
    // TODO: implement onInit
    super.onInit();
    fetchingUserDetail();
  }

  fetchingUserDetail() {
    userModel = Get.arguments['userModel'];

  }

}