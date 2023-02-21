import 'package:flutter/material.dart';


class BasicDesignScreen extends StatelessWidget {
   
 const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          //Imagen landscape(imagen superior).
          const Image( image: AssetImage('assets/landscape.jpg')),

          //Texto de abajo de la imagen.(Titulo)
          const Title(),

          //Iconos o botones.
          const ButtonSection(),

          //Descripcion
          Container(
            margin: const EdgeInsets.symmetric( horizontal: 20, vertical: 20),
            child: const Text(
              //Poner texto justificado.
              textAlign: TextAlign.justify,
              'Laborum dolor consectetur aliqua quis laborum pariatur aliqua dolore ut occaecat proident fugiat cupidatat non. Cupidatat est ipsum consectetur tempor eu fugiat ipsum est ut. Tempor aute commodo sint minim occaecat qui. Aliquip nulla amet laboris fugiat irure. Ut anim culpa quis anim incididunt fugiat commodo ullamco exercitation aliquip duis cillum esse. Adipisicing voluptate dolor incididunt aliqua in.'
            ))
        ],
      )
    );
  }
}

//widget de texto por debajo del landscape.
class Title extends StatelessWidget {
   const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      //Separar el texto del borde de la pantalla.
      margin: const EdgeInsets.symmetric( horizontal: 30, vertical: 20),

      child: Row(
        children: [
          
          Column(
            //Alinear texto horizontalmente
            crossAxisAlignment: CrossAxisAlignment.start,

            children: const [
              Text('Oeschinen Lake Campground', style: TextStyle( fontWeight: FontWeight.bold),),
              Text('Kandersteg, Switzerland', style: TextStyle( color: Colors.black45)),
            ],
          ),

          //Hace la expansion entre los widgets
          Expanded(child: Container()),

          const Icon( Icons.star, color: Colors.red ),
          const Text('41'),
        ],
      ),
    );
  }
}

//widget de ButtonSection
class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      //Separar el texto del borde de la pantalla
      margin: const EdgeInsets.symmetric( horizontal: 60, vertical: 20),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [  
          CustomButton( icon: Icons.call, text: 'CALL' ),
          CustomButton( icon: Icons.send, text: 'ROUTE' ),
          CustomButton( icon: Icons.share, text: 'SHARE' ),
        ],

      ),
    );
  }
}

//widget complementario de ButtonSection
class CustomButton extends StatelessWidget {
  //argumentos obligatorios
  final IconData icon;
  final String text;
  
  const CustomButton({
    Key? key, required this.icon, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon( icon, color: Colors.blue, size: 30),
        Text( text, style: const TextStyle(color: Colors.blue)),
      ],
    );
  }
}

