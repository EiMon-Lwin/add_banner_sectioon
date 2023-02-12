import 'package:add_banner_sectioon/pages/home_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'const/api_constants.dart';
import 'network/api/now_playing_api/now_playing_api.dart';


void main(){
  runApp(MyApp());
  NowPlayingApi nowPlayingApi=NowPlayingApi(Dio());
  nowPlayingApi.getAllNowPlayingResponse(kApiKey, 1).then((value){
    print('success value=====>$value');
  }).catchError((error)=>print("Error===>$error"));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
