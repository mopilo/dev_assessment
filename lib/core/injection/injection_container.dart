import 'package:dev_assessment/core/environment/evn.dart';
import 'package:dev_assessment/core/network/network_client.dart';
import 'package:dev_assessment/features/explore/data/datasource/explore_service.dart';
import 'package:dev_assessment/features/explore/presentation/provider/explore_provider.dart';
import 'package:get_it/get_it.dart';

final inject = GetIt.instance;

Future<void> initializeCore({required Environment environment}) async {
  Env.environment = environment;
  await _initializeCore();
  _initServices();
  _initProviders();
  _initBloc();
  _initDataSources();
  _initDataRepositories();
  _initializeUsecase();
}

/// Initialize the core functions here
Future<void> _initializeCore() async {}

/// Initialize providers here
void _initProviders() {
  inject
      .registerLazySingleton<ExploreProvider>(() => ExploreProvider(inject()));
}

/// Initialize bloc's here
void _initBloc() {}

/// Initialize data sources implementations
void _initDataSources() {}

/// Initialize data repositories implementations
void _initDataRepositories() {}

/// Initialize services's here
void _initServices() {
  inject.registerLazySingleton<NetworkClient>(
      () => NetworkClient(baseUrl: Env.coreBaseUrl));
  inject.registerLazySingleton<ExploreService>(
      () => ExploreService(networkService: inject()));
}

/// Initialize usecases here
void _initializeUsecase() {}
