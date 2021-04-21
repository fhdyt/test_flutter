import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:myapp/model/dataModel.dart';
import 'package:myapp/model/modelList.dart';

class ApiProvider {
  Dio dio = Dio();

  Future<ModelUser> getHttp(int? detail) async {
    Response response =
        await dio.get('https://reqres.in/api/users/' + detail.toString());
    return ModelUser.fromJson(response.data);
  }

  Future<ModelUserList> getbauHttp() async {
    Response response = await dio.get('https://reqres.in/api/users?page=2');
    return ModelUserList.fromJson(response.data);
  }
}
