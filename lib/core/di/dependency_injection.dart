import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:minimal_social_feed_app/core/networking/api_service.dart';
import 'package:minimal_social_feed_app/core/networking/dio_factory.dart';
import 'package:minimal_social_feed_app/features/login/data/repos/login_repo.dart';
import 'package:minimal_social_feed_app/features/login/domain/cubit/login_cubit.dart';
import 'package:minimal_social_feed_app/features/register/data/repos/register_repo.dart';
import 'package:minimal_social_feed_app/features/register/domain/cubit/register_cubit.dart';

final getit = GetIt.instance;
Future<void> setupGetit() async {
  Dio dio = DioFactory.getDio();
  getit.registerLazySingleton<ApiService>(() => ApiService(dio));

  //======login
  getit.registerLazySingleton<LoginRepo>(() => LoginRepo(getit()));
  getit.registerLazySingleton<LoginCubit>(() => LoginCubit(getit()));

  /// second time just feature Repo && feature cubit

  getit.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getit()));
  getit.registerLazySingleton<RegisterCubit>(() => RegisterCubit(getit()));
}
