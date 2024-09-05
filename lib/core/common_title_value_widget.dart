
import 'package:flutter/cupertino.dart';

Widget commonTitleValueWidget({required String? title ,required String? value }){
  return  Row(
    mainAxisAlignment:MainAxisAlignment.spaceBetween,
    children:[
     Text(title ?? '',style:const TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
      Text(value ?? '',style:const TextStyle(fontSize: 10),)
    ]
  );
 }