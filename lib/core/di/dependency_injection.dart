import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:minimal_social_feed_app/core/networking/api_service.dart';
import 'package:minimal_social_feed_app/core/networking/dio_factory.dart';
import 'package:minimal_social_feed_app/features/create_post/data/create_post_repo.dart';
import 'package:minimal_social_feed_app/features/create_post/logic/create_post_cubit.dart';
import 'package:minimal_social_feed_app/features/feed/data/repos/feed_repo.dart';
import 'package:minimal_social_feed_app/features/login/data/repos/login_repo.dart';
import 'package:minimal_social_feed_app/features/register/data/repos/register_repo.dart';
import 'package:minimal_social_feed_app/features/single_post/data/repos/single_post_repo.dart';

final getit = GetIt.instance;
Future<void> setupGetit() async {
  Dio dio = DioFactory.getDio();
  getit.registerLazySingleton<ApiService>(() => ApiService(dio));

  //======login
  getit.registerLazySingleton<LoginRepo>(() => LoginRepo(getit()));
  //getit.registerFactory<LoginCubit>(() => LoginCubit(getit()));

  //register screen
  getit.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getit()));
  // getit.registerFactory<RegisterCubit>(() => RegisterCubit(getit()));
  getit.registerLazySingleton<FeedRepo>(() => FeedRepo(getit()));
  getit.registerLazySingleton<SinglePostRepo>(() => SinglePostRepo(getit()));

  //
  getit.registerLazySingleton<CreatePostRepo>(() => CreatePostRepo(getit()));

  getit.registerFactory<CreatePostCubit>(() => CreatePostCubit(getit()));
}
