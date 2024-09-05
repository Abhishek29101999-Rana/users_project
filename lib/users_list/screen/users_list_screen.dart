import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:users_project/core/common_title_value_widget.dart';
import 'package:users_project/users_list/controller/users_list_controller.dart';
class UsersListScreen extends GetView<UsersListController>{
  const UsersListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Get.put(UsersListController());
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor:Colors.red,
          title: const Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Text('UsersList',style:TextStyle(fontWeight: FontWeight.bold,fontSize:25),textAlign:TextAlign.center),
            ],
          ),
        ),
        body:Obx(
            ()=> Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(children:[
                  listViewBuilderWidget(),
                ]),
                          ),
              controller.showLoader.value == true?CircularProgressIndicator():SizedBox()
            ],
          ),
        ),
    );
  }

  listViewBuilderWidget() {
    return Expanded(
      child: RefreshIndicator(
        color:Colors.blue,
        backgroundColor: Colors.black,
        onRefresh: () async {
          await controller.initializeUsersListApi();
        },
        child: ListView.builder(
          itemCount:controller.usersList.length,
          itemBuilder: (BuildContext context, int index) {
            return listViewItem(index);
          },


      ),
      )
    );
  }

  listViewItem(int index) {
    var name = controller.usersList[index].name;
    var email = controller.usersList[index].email;
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            controller.onUserCardTap(index: index);
          },
          child: Container(
            padding:const EdgeInsets.all(10),
              decoration:BoxDecoration(
                  border:Border.all(width:1,color:Colors.black),
                  borderRadius:BorderRadius.circular(10),
                color:Colors.blueAccent,
              ),
              child: Column(
                children: [
               commonTitleValueWidget(title: 'Name', value: name),
                  commonTitleValueWidget(title: 'Email', value: email),
                ],
              )

          ),
        ),
        const SizedBox(height:10)
      ],
    );
  }



}

