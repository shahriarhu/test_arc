import 'package:get_it/get_it.dart';
import 'package:test_arc/core/services/profile_api.dart';
import 'package:test_arc/core/view_models/base_view_model.dart';
import 'package:test_arc/core/view_models/profies_view_model.dart';
import 'package:test_arc/core/view_models/profile_details_view_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerFactory(() => BaseViewModel());

  locator.registerFactory(() => ProfilesViewModel());
  locator.registerFactory(() => ProfileDetailsViewModel());

  locator.registerLazySingleton(() => ProfileAPI());
}
