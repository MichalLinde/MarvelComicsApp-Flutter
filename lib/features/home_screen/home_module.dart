import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_app/core/repository/comics_repository.dart';
import 'package:marvel_app/features/home_screen/cubits/home_cubit/home_cubit.dart';
import 'package:marvel_app/features/home_screen/home_page.dart';
import 'package:marvel_app/features/home_screen/search_page.dart';

import 'cubits/search_cubit/search_cubit.dart';


class HomeModule extends Module{

  @override
  List<Bind> get binds => [
    Bind.factory((i) => ComicsRepository(i())),
    Bind.factory((i) => HomeCubit(comicsRepository: i())),
    Bind.factory((i) => SearchCubit(comicsRepository: i())),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute("/home", child: (context, args) => HomePage()),
    ChildRoute("/", child: (context, args) => SearchPage()),
  ];
}