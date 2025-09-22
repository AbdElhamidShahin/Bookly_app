import 'package:booky_app/core/constants/Strings.dart';
import 'package:dio/dio.dart';

class ApiServise {
  final Dio dio;

  ApiServise(this.dio);

  Future<Map<String, dynamic>> getCatogaryData({
    required String endPoint,
  }) async {
    var response = await Dio().get("$baseUrl$endPoint");
    return response.data;
  }
}
