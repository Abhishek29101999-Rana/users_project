import 'package:dio/dio.dart';
import 'package:users_project/users_list/model/user_model.dart';
import 'package:get/get.dart';

class UsersListController extends GetxController{
  var showLoader = false.obs ;
  List<User> usersList = [];

  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    super.onInit();
    await initializeUsersListApi();
  }

  initializeUsersListApi() async {
    try{
      var dio =Dio();
      setShowLoader(value:true);
      var response = await dio.get('https://jsonplaceholder.typicode.com/users');
      for(int i = 0 ; i < response.data.length ; i++){
        usersList.add(User.fromJson(response.data[i]));
      }
      setShowLoader(value: false);
      print(usersList);
    }
    catch(e){
      print(e);
    }

  }

  void setShowLoader({required bool value}) {
    showLoader.value = value ;
    showLoader.refresh();
  }

  void onUserCardTap({required int index}) {
    Get.toNamed('/users_detail',arguments: {
      'userModel': usersList[index]
    });
  }

}