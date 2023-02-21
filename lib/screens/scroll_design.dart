import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
   
  final boxDecoration = const BoxDecoration(
          gradient: LinearGradient(
            //Acomodarlo para que inicie de un color en especifico
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            //punto de quiebre del gradiente
            stops: [0.5,0],
            colors: [
              Color(0xff5EE8C5),
              Color(0xff30BAD6),
            ]
          ),
        );

  const ScrollScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      //Se utilizó el container para usar el gradiente de fondo
      body: Container(
        //fondo principal gradiente
        decoration: boxDecoration,
        
        child: PageView(
          //Animacion de efecto de seguir bajando
          physics: const BouncingScrollPhysics(),
          //Hacer scroll verticalmente
          scrollDirection: Axis.vertical,

          children: [
            //Mostrar las paginas
            Page1(),
            Page2(),
          ],
        ),
      )
    );
  }
}

class Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //El stack sirve para colocar widgets encima de otros.
    return Stack(
      children: [
        //Imagen de fondo
        Background(),
        
        //Contenido principal - columna
        MainContent(),
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //variable para el texto superior
    const textStyle = TextStyle( fontSize: 45, fontWeight: FontWeight.bold, color: Colors.white);

    //Acomodar el contenido en area segura
    return SafeArea(
      bottom: false,
      child: Column(
        //Alinear texto de manera horizontal
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox( height: 40),
          const Text('11°', style: textStyle),
          const Text('Miércoles', style: textStyle),
    
          Expanded(child: Container()),
    
          const Icon( Icons.keyboard_arrow_down, size: 100, color: Colors.white )
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color:const Color(0xff30BAD6),
      //Hacer que el contenedor tome todo el espacio posible.
      height: double.infinity,
      //Alinear imagen hacia arriba.
      alignment: Alignment.topCenter,
      //imagen de fondo
      child: const Image( image: AssetImage('assets/scroll-1.png'), )
    
    );
  }
}

class Page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      //color de fondo
      color: const Color(0xff30BAD6),

      //boton del centro
      child: Center(
        child: TextButton(
          onPressed: () {},
          //diseño del boton
          style: TextButton.styleFrom( 
            backgroundColor: const Color(0xff0098FA),
            shape: const StadiumBorder()
            ), 
          //diseño del texto del boton
          child: const Padding(
            padding: EdgeInsets.symmetric( horizontal: 40 ),
            child: Text('Bienvenido', style: TextStyle( color: Colors.white, fontSize: 25)),
          ),
        ),
      ),
    );
  }
}