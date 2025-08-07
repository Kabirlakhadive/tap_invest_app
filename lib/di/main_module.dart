import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class MainModule {
  @lazySingleton
  Dio get dio => Dio();
}
