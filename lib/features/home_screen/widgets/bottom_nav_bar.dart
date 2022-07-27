import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../resources/custom_colors.dart';

class BottomNavBar extends StatelessWidget{

  int currentIndex;
  BottomNavBar({required this.currentIndex});

  @override
  Widget build(BuildContext context){
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.red,
      unselectedItemColor: CustomColors.regularGrey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      iconSize: 35.0,
      onTap: (index) => bottomNavigationOnTap(index),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_rounded),
          label: "Search",
        ),
      ],
    );
  }

  void bottomNavigationOnTap(int index){
    if (index == 1){
      Modular.to.navigate("/search");
    } else if(index == 0){
      Modular.to.navigate("/");
    }
  }
}