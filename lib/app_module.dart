import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_app/features/details_screen/details_module.dart';
import 'core/network/api_client.dart';
import 'features/home_screen/home_module.dart';

class AppModule extends Module{

  @override
  List<Module> get imports => [
    HomeModule(),
    DetailsModule(),
  ];

  @override
  List<Bind> get binds => [
    Bind.singleton((i) => Dio()),
    Bind.singleton((i) => ApiClient(i())),
  ];

  @override
  List<ModularRoute> get routes => [
    ModuleRoute("/", module: HomeModule()),
    ModuleRoute("/details", module: DetailsModule()),
  ];


}