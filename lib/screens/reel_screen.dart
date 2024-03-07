//Pantalla con infinite scroll para ver reels de forma aleatoria
import 'package:flutter/material.dart';

class ReelScreen extends StatefulWidget {
  const ReelScreen({super.key});

  @override
  State<ReelScreen> createState() => _ReelScreenState();
}

class _ReelScreenState extends State<ReelScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //El UI se realiza con stack para poder poner
      //abajo el video
      //Encima se pone: titulo, boton de camara
      //A la derecha se ponen los botones de like, comentario, compartir
      //Abajo se pone el nombre del usuario y la descripcion

      body: Stack(children: [
        //Video
        Container(
            color: Colors.indigo,
            child: Center(
              child: FlutterLogo(size: 120),
            )),
        //Titulo
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(top: 30, left: 40),
            child: Text(
              "Reel",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
