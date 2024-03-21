import 'dart:async';
import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as D;
import 'package:noor_s_application1/models/Cities.dart';
import 'package:noor_s_application1/models/User.dart';
import 'package:noor_s_application1/utils.dart';


final userToken = GetStorage();
class AuthController extends GetxController
{

  @override
  void onInit() {
    super.onInit();
    fetchCities();
  }

  City? selectedCity;
  String?  msg;
  String?  vcode;
  final cities = <City>[].obs;
  int?  status;
  final _dio = Dio();
  RxBool isLoading = false.obs;

  void setSelectedCity(City? city) {
    selectedCity = city;
    update(); // Notify GetX that the state has changed
  }
  Future<void> fetchCities() async {
    try {
      print("SSAAS");
      isLoading.value = true;
      final response = await _dio.get('https://zadstorely.ly/public/api/cities');
      if (response.statusCode == 200) {
        final List<dynamic> jsonResponse = response.data;
        cities.clear(); // تنظيف القائمة قبل ملء البيانات الجديدة
        cities.addAll(jsonResponse.map((json) => City.fromJson(json)));
        print("city:${jsonResponse}");
        isLoading.value = false;
      } else {
        print("SSS");
        isLoading.value = false;
      }
    } catch (e) {
      print(e);
      isLoading.value = false;
    }
  }

//Login Method
  Future<User?> login(email,password) async {

    try {

      final formData =D.FormData.fromMap({

        "email": email,
        'password': password,
      });



      final res = await _dio.post(
        'https://zadstorely.ly/public/api/login',  data: jsonEncode({
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
        print('true login2');
        Token=res.data["token"];
        final user = User.fromJson(res.data);

        if(Token!=null){

          userToken.write("token", Token);

          print('tokenss');
          print(userToken.read('id'));
          empName=user.name;
          email=user.email;
          mobile = user.phone;
          address = user.address;
          print('address $address');
          user_id = user.id;

          print(Token);
          print('user_id $user_id');

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
  Future<User?> register(
      String name,
      String phone,
      String address,
      String email,
      String password,
      String avatar,
      ) async {
    try {
      final formData = D.FormData.fromMap({
        "name": name,
        "phone": phone,
        "address": address,
        "email": email,
        "password": password,
        "avatar": "test",
      });

      final res = await _dio.post(
        'https://zadstorely.ly/public/api/register', // Change URL to your register endpoint
        data: formData,
        options: Options(
          receiveTimeout: 10000,
          headers: {
            'Content-Type': 'multipart/form-data', // Use multipart for FormData
          },
        ),
      );



      if (res.statusCode == 200) {
        print('true register2');
        print(res.data);

        status = 1;
        Token = res.data["token"];
        final user = User.fromJson(res.data);

        if (Token != null) {
          userToken.write("token", Token);

          print('token');
          print(userToken.read('user_id'));
          empName = user.name;
          mobile = user.phone;
          address = user.address;


          status = 1;
        } else {
          status = 0;
        }

        return user;
      } else {
        return null;
      }
    } on DioError catch (e) {
      print("errors ${e.response!.data}");
      if (e.type == DioErrorType.receiveTimeout) {
        print('Connection Timeout Exception');
      }
      status = 0;
      msg = '${e.response!.data['message']}';

      print(e);

      return null;
    }
  }





  Future<void> updateUserData(String name, String email, String phone,String Token) async {
    try {

      final dio = Dio();
      final res = await dio.put(
        'https://zadstorely.ly/public/api/profile',
        data: {
          'name': name,
          'email': email,
          'phone': phone,
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5YjJiOWUzMi1jZGFmLTRjOGUtYWU1Zi03NTRjYjcwOGU2ZjUiLCJqdGkiOiJhMzFkNWMyZGE2N2Q3MDEyMTY0NmFlYjUyODg4YzBkZmE3YWZmNmRjMjc4YjU5ZTk2MTI0Nzc0YmRhNzk0ZjQwMmEzY2RiNjZiNzJjMzY2YyIsImlhdCI6MTcwODYyNzI4Mi41MjA0NTYsIm5iZiI6MTcwODYyNzI4Mi41MjA0NTcsImV4cCI6MTc0MDI0OTY4Mi41MTc1MDQsInN1YiI6IjEiLCJzY29wZXMiOltdfQ.C1UjwjKqW2_rjK2e9UTa6NYy_MjnSOhnmK0QxqfbUzyc1YUNczoXxCsmIjcpWxQj389RyE0K_rtg7maVaK8LIcsI5y-y7p9iLnMeocNKBaZ0v2SP5XgGD00NSzrIoQzSvfWbr-92m5c0BhCYjrnwzwRL0tgK-2sGg9XLDw942gRGZ6awT2T3vajwxDQQazJ5xsbUCdwKehw6otLeIyEom1IF0Iit6GFJy3mNe_iPQY3oq84A79pzN-zrYexiNz84iJrK1kobCHluDaYYLCQgWkxZ7WZYFIT4lhiRzx-WlLVB6dlvejm8tAvhQKyDnneeYgaX2O0IaC5SibKLXt5dqpIWaucyqOJT3q3M5JuJ7DAvB8r2qhJuUQUwD9vZMxtYdXcNDsMEKceF67JWV7Lh2h6BXJtWuLHZg8qBArYXU5YtMNaG206m2GRAM0V3kn5LxN7iNRQVebidKe5C5yrKLcYJNlGRNMiUj7uLHFPIWeVJFegR7lJohBZebaEbb0WNU1LLuYRUbUPMEEbL0e8w8sDhpl28yrnsnkEny5LETRqddoA_FY6zNd7E0UJdhdEqPKVY9n_JBih00ljLPHhcRI9h5YijvMoSmGllOJLoUJ7Z5HAyxFlJf6e5nCfkMKXu2vjg6CWdZJnPMjjZ_jr8BeCrOxKEVukvSpr4RVACjVw',
          },
        ),
      );



      if (res.statusCode == 200) {
        print('User data updated successfully');
      } else {
        print('Failed to update user data');
      }
    } catch (e) {
      print("sfssf");
      print('Error: $e');
    }
  }







}