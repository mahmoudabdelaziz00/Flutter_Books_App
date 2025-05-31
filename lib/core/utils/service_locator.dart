import 'package:books_app/Features/home/data/repos/home_rep_impl.dart';
import 'package:books_app/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepImpl>(HomeRepImpl(getIt.get<ApiService>()));
}
