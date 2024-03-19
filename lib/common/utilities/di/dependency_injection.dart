import 'package:get_it/get_it.dart';

import '../../../data/local/local_storage.dart';
import '../../../data/remote/controller/network_c.dart';

class DependencyInjection {
  init() {
    LocalStorage localStorage = GetIt.instance.registerSingleton<LocalStorage>(LocalStorage());
    localStorage.init();
    NetworkController networkController = GetIt.instance.registerSingleton<NetworkController>(NetworkController());
    networkController.init();
  }
}
