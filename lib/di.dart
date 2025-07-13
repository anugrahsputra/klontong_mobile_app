import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:get_it/get_it.dart';
import 'package:http_certificate_pinning/http_certificate_pinning.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:klontong_mobile_app/core/core.dart';
import 'package:klontong_mobile_app/features/auth/auth.dart';
import 'package:klontong_mobile_app/features/auth/data/datasource/auth_datasource.dart';
import 'package:klontong_mobile_app/features/product/product.dart';
import 'package:path_provider/path_provider.dart';

final di = GetIt.instance;

Future<void> setup() async {
  initializeDateFormatting();

  var dir = await getTemporaryDirectory();

  /* -----------------> Network <-----------------*/
  di.registerFactory<Dio>(
    () => Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 35),
        receiveTimeout: const Duration(seconds: 35),
        sendTimeout: const Duration(seconds: 35),
      ),
    ),
    instanceName: "interceptor",
  );
  di.registerFactory<Dio>(
    () =>
        Dio(
            BaseOptions(
              connectTimeout: const Duration(seconds: 35),
              receiveTimeout: const Duration(seconds: 35),
              sendTimeout: const Duration(seconds: 35),
            ),
          )
          ..interceptors.addAll([
            NetworkInterceptor(),
            // CertificatePinningInterceptor(
            //   allowedSHAFingerprints: ShaFingerprints.allowedSHAFingerprints,
            // ),
            DioCacheInterceptor(
              options: CacheOptions(
                store: HiveCacheStore(dir.path, hiveBoxName: 'local'),
                priority: CachePriority.high,
                policy: CachePolicy.forceCache,
                maxStale: const Duration(days: 7),
                hitCacheOnErrorExcept: [],
              ),
            ),
          ]),
  );

  di.registerFactory<NetworkClient>(() => NetworkClientImpl(dio: di<Dio>()));
  di.registerFactory<AppNavigator>(() => AppNavigator());
  _authLocator();
  _productLocator();
}

void _authLocator() {
  di.registerLazySingleton<AuthDataSource>(
    () => AuthDataSourceImpl(dioClient: di<NetworkClient>()),
  );

  di.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(dataSource: di<AuthDataSource>()),
  );

  di.registerLazySingleton<LoginUsecase>(
    () => LoginUsecase(repository: di<AuthRepository>()),
  );

  di.registerLazySingleton<RegisterUsecase>(
    () => RegisterUsecase(repository: di<AuthRepository>()),
  );

  di.registerFactory<LoginBloc>(
    () => LoginBloc(loginUsecase: di<LoginUsecase>()),
  );
  di.registerFactory<RegisterBloc>(
    () => RegisterBloc(registerUsecase: di<RegisterUsecase>()),
  );
}

void _productLocator() {
  di.registerLazySingleton<ProductDatasource>(
    () => ProductDatasourceImpl(di<NetworkClient>()),
  );

  di.registerLazySingleton<ProductRepository>(
    () => ProductRepositoryImpl(datasource: di<ProductDatasource>()),
  );

  di.registerLazySingleton<GetProductUsecase>(
    () => GetProductUsecase(repository: di<ProductRepository>()),
  );

  di.registerLazySingleton<GetProductDetailUsecase>(
    () => GetProductDetailUsecase(repository: di<ProductRepository>()),
  );

  di.registerLazySingleton<AddProductUsecase>(
    () => AddProductUsecase(repository: di<ProductRepository>()),
  );

  di.registerFactory<ProductsCubit>(
    () => ProductsCubit(
      getProduct: di<GetProductUsecase>(),
    ),
  );

}