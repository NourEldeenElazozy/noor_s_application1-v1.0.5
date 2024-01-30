import 'dart:async';
import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:noor_s_application1/models/User.dart';
import 'package:noor_s_application1/utils.dart';


final userToken = GetStorage();
class AuthController {
  String?  msg;
  String?  vcode;

  int?  status;
  final _dio = Dio();
//Login Method
  Future<User?> login(email,password) async {

    try {

      final formData = FormData.fromMap({

        "email": email,
        'password': password,
      });



      final res = await _dio.post(
        'http://127.0.0.1:8000/login',  data: jsonEncode({
        'email': email,
        'password': password,
      }),
        options: Options(

          receiveTimeout: 10000,
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );


      print('true login2');
      print(res.data);

      //104561


      if (res.statusCode == 200) {
        Token=res.data["token"];
        final user = User.fromJson(res.data);

        if(Token!=null){

          userToken.write("token", Token);

          print('token');
          print(userToken.read('user_id'));
          empName=user.name;
          mobile=user.phone;
          //orders=user.order_count;

          print(Token);

          status=1;
        }else{
          status=0;
        }




        return user;
      }else{
        return null;
      }







    }on DioError  catch (e) {
      print("errorss ${e.response!.data}");
      if(e.type == DioErrorType.receiveTimeout){
        //throw Exception("Connection  Timeout Exception");
        print('Connection  Timeout Exception');
      }
      status=0;
      msg='${e.response!.data['message']}';

      print(e);


    }

  }


  Future getLocalData() async {

    try {

      Token= await userToken.read('token');
      empNo=  await userToken.read('empNo');
      user_id =await userToken.read('user_id');



    }  catch (e) {
      print(e);
    }

    status=0;






  }







}