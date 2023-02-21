import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {



  const PageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(

        //separar texto del marco
        margin: const EdgeInsets.symmetric( horizontal: 20),
    
        child: Column(
          //Alinear texto horizontalmente y verticalmente
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: const [
            SizedBox( height: 20),
            Text('Classify transaction', style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
            SizedBox( height: 10),
            Text('Classify this transaction into a particular category', style: TextStyle(fontSize: 16, color: Colors.white70)),
          ],
        ),
      ),
    );
  }
}