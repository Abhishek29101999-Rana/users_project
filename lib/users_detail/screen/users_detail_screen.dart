import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:users_project/core/common_title_value_widget.dart';
import 'package:users_project/users_detail/controller/user_detail_controller.dart';

class UserDetailScreen extends GetView<UserDetailController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:Colors.red,
        title: const Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Text('UsersDetail',style:TextStyle(fontWeight: FontWeight.bold,fontSize:25),textAlign:TextAlign.center),
          ],
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            commonTitleValueWidget(title: 'Id', value: controller.userModel.id.toString()),
            const SizedBox(height:10),
            commonTitleValueWidget(title: 'Name', value:controller.userModel.name),
            const SizedBox(height:10),
            commonTitleValueWidget(title: 'UserName', value: controller.userModel.username),
            const SizedBox(height:10),
            commonTitleValueWidget(title: 'Email', value: controller.userModel.email),
            const SizedBox(height:10),
            commonTitleValueWidget(title: 'Phone', value: controller.userModel.phone),
            const SizedBox(height:10),
            commonTitleValueWidget(title: 'Website', value: controller.userModel.website),
          ]
        ),
      ),
    );
  }

}