//Pantalla 4 Favorito


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/favoritos.dart';

class FavoritosScreen extends StatefulWidget {
const FavoritosScreen({super.key});

@override
State<FavoritosScreen> createState() =>
_FavoritosScreenState();
}

class _FavoritosScreenState
extends State<FavoritosScreen> {

void eliminarFavorito(String habilidad) {


setState(() {

  Favoritos.eliminar(habilidad);

});

ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(
    content: Text(
      '$habilidad eliminada de favoritos',
    ),
  ),
);

}

@override
Widget build(BuildContext context) {


return Scaffold(

  appBar: AppBar(

    title: Text(
      'Mis Favoritos',
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.bold,
      ),
    ),

    centerTitle: true,

    backgroundColor: Colors.indigo,

    foregroundColor: Colors.white,
  ),

  body: Favoritos.habilidades.isEmpty

      ? Center(

          child: Padding(
            padding: const EdgeInsets.all(25),

            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center,

              children: [

                const Icon(
                  Icons.favorite_border,
                  size: 100,
                  color: Colors.grey,
                ),

                const SizedBox(height: 20),

                Text(
                  'No tienes favoritos',

                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  'Selecciona el corazón ❤️ '
                  'en Mis Habilidades para '
                  'guardar una habilidad.',

                  textAlign: TextAlign.center,

                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 25),

                ElevatedButton.icon(

                  onPressed: () {
                    Navigator.pop(context);
                  },

                  icon: const Icon(
                    Icons.code,
                  ),

                  label: const Text(
                    'Ir a Mis Habilidades',
                  ),
                ),
              ],
            ),
          ),
        )

      : ListView.builder(

          padding: const EdgeInsets.all(15),

          itemCount:
              Favoritos.habilidades.length,

          itemBuilder: (context, index) {

            final habilidad =
                Favoritos.habilidades[index];

            return Card(

              elevation: 3,

              margin: const EdgeInsets.only(
                bottom: 12,
              ),

              child: ListTile(

                leading: const CircleAvatar(

                  backgroundColor:
                      Colors.indigo,

                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),

                title: Text(
                  habilidad,

                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                subtitle: const Text(
                  'Habilidad guardada',
                ),

                trailing: IconButton(

                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),

                  onPressed: () {

                    eliminarFavorito(
                      habilidad,
                    );
                  },
                ),
              ),
            );
          },
        ),
);


}
}
