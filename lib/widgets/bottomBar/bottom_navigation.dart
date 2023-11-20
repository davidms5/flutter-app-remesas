import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget{
  
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.green, // Set the color for the selected item
      unselectedItemColor: Colors.grey,
      items: const [
         BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.blue,),
          label: "home",
          ),

          BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: "perfil",
          ),

      ]);
  }
}