import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:users_project/users_detail/binding/user_detail_binding.dart';
import 'package:users_project/users_detail/screen/users_detail_screen.dart';
import 'package:users_project/users_list/binding/users_list_binding.dart';
import 'package:users_project/users_list/screen/users_list_screen.dart';
 main()  {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:'/users_list',
      getPages: [
        GetPage(name: '/users_list', page: ()=> const UsersListScreen(),binding:UsersListBinding()),
        GetPage(name: '/users_detail', page: ()=>  UserDetailScreen(),binding:UserDetailBinding()),

      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const UsersListScreen(),
    );
  }
}