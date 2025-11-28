import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:minimal_social_feed_app/core/networking/api_service.dart';
import 'package:minimal_social_feed_app/core/networking/dio_factory.dart';
import 'package:minimal_social_feed_app/features/feed/data/apis/feed_api_service.dart';
import 'package:minimal_social_feed_app/features/feed/data/repos/feed_repo.dart';
import 'package:minimal_social_feed_app/features/feed/domain/feed_cubit.dart';
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
  getit.registerFactory<LoginCubit>(() => LoginCubit(getit()));

  //register screen
  getit.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getit()));
  // getit.registerFactory<RegisterCubit>(() => RegisterCubit(getit()));

  //feed screen
  getit.registerLazySingleton<FeedApiService>(() => FeedApiService(dio));
  getit.registerLazySingleton<FeedRepo>(() => FeedRepo(getit()));
  // getit.registerFactory<FeedCubit>(() => FeedCubit(getit()));
}
