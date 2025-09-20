import 'package:booky_app/core/constants/Strings.dart';
import 'package:dio/dio.dart';

class ApiServise {
  final Dio dio;

  ApiServise(this.dio);

  Future<List<dynamic>> getCatogaryData({required String endPoint}) async {
    var response = await Dio().get(baseUrl);
    return response.data;
  }
}

// class ApiServise {
//   late Dio dio;
//
//   ApiServise() {
//     BaseOptions options = BaseOptions(baseUrl: baseUrl);
//     dio = Dio(options);
//   }
//
//   Future<List<dynamic>> getCatogaryData() async {
//     try {
//       Response response = await Dio().get("volumes");
//       return response.data["result"];
//     } catch (e) {
//       print(e.toString());
//     }
//     return [];
//   }
// }
