import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:openfrontapp/main.dart';

class SplashLoading extends StatefulWidget{
  const SplashLoading({super.key});

  @override
  State<SplashLoading> createState() => _SplashState();
}

class _SplashState extends State<SplashLoading> with SingleTickerProviderStateMixin{

  @override
  void initState() {
    // TODO: implement initState aqui es para iniciar el splash
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const MyHomePage(title:  'Bienvenido a openChange!'))
          );
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose esto cambia el splash por la app
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:  Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Color.fromARGB(255, 1, 112, 35)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft
            )
        ),
        child: const Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Expanded (
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text(
            "bienvenido",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold
            )
            ),
            ]

            )
          )
        ])
        )
        //child: Column(
        //mainAxisAligment: mainAxisAligment.center,
        //children: const [
        //Icon(aqui va el icono, puede ser una variable de entorno?)]),
      ),
    );
  }
}