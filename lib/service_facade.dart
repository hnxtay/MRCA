import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ServiceFacade {
  static final _getIt = GetIt.instance;
  static final _prefs = SharedPreferences.getInstance();

  static void registerDefaultService() async {
    _getIt.registerSingletonAsync(
      () => _prefs,
    );
  }

  static T getService<T extends Object>() {
    return _getIt.get<T>();
  }
}
