import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_app/features/details_screen/details_page.dart';

class DetailsModule extends Module{
  @override
  List<ModularRoute> get routes => [
    ChildRoute("/", child: (context, args) => DetailsPage()),
  ];

}