import 'package:flutter/material.dart';

import 'package:disenos_app/widgets/widgets.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //stack es para colocar widgets encima de otros.
      body: Stack(
        children: const [
          //Background
          Background(),
          //Home Body
          _HomeBody(),
        ],
      ),

      //custombottomnavigationbar
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //permite hacer scroll si el hijo es mas grande de la pantalla movil
    return SingleChildScrollView(
      child: Column(
        children: const [
          //Titulos
          PageTitle(),

          //Card table
          CardTable(),
        ],
      ),
    );
  }
}