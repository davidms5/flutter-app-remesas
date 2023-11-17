import "package:flutter/material.dart";

class Sidebar extends StatelessWidget{
  
  const Sidebar({super.key});


  @override
  Widget build(BuildContext context){

    return Drawer(

      child: ListView(

        padding: EdgeInsets.zero,
        //lo de abajo es para poder almacenar widgets en la lista
        children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text("opciones"),
          ),
        ListTile(
          title: Text("opcion 1"),
        ),
        
        ],
      ),
    );
  }
}