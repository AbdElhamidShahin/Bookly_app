import 'package:booky_app/core/utils/ApiServise.dart';
import 'package:booky_app/data/repositories/HomeRepoImp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupSeviceLocator() {
  getIt.registerSingleton<ApiServise>(ApiServise(Dio()));
  getIt.registerSingleton<HomeRepoImp>(HomeRepoImp(getIt.get<ApiServise>()));
}
