//Pantalla 3 habilidades 

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/favoritos.dart';
import 'favoritos_screen.dart';

class HabilidadesScreen extends StatefulWidget {
const HabilidadesScreen({super.key});

@override
State<HabilidadesScreen> createState() =>
_HabilidadesScreenState();
}

class _HabilidadesScreenState extends State<HabilidadesScreen> {

final List<String> habilidades = [
'Administración de sistemas',
'Oracle Database',
'Oracle JDE EnterpriseOne',
'Flutter',
'Programación',
'Tecnología',
];

// Agregar o quitar favorito
void cambiarFavorito(String habilidad) {


setState(() {

  if (Favoritos.contiene(habilidad)) {

    // Quitar de favoritos
    Favoritos.eliminar(habilidad);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          '$habilidad eliminada de favoritos',
        ),
      ),
    );

  } else {

    // Agregar a favoritos
    Favoritos.agregar(habilidad);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          '$habilidad agregada a favoritos',
        ),
      ),
    );
  }
});


}

@override
Widget build(BuildContext context) {


return Scaffold(

  appBar: AppBar(

    title: Text(
      'Mis Habilidades',
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.bold,
      ),
    ),

    centerTitle: true,

    backgroundColor: Colors.indigo,

    foregroundColor: Colors.white,

    actions: [

      IconButton(

        icon: const Icon(
          Icons.favorite,
        ),

        tooltip: 'Mis favoritos',

        onPressed: () {

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  const FavoritosScreen(),
            ),
          );
        },
      ),
    ],
  ),

  body: ListView.builder(

    padding: const EdgeInsets.all(15),

    itemCount: habilidades.length,

    itemBuilder: (context, index) {

      final habilidad = habilidades[index];

      // Verificar si está guardada
      final esFavorito =
          Favoritos.contiene(habilidad);

      return Card(

        elevation: 3,

        margin: const EdgeInsets.only(
          bottom: 12,
        ),

        child: ListTile(

          leading: const CircleAvatar(

            backgroundColor: Colors.indigo,

            child: Icon(
              Icons.code,
              color: Colors.white,
            ),
          ),

          title: Text(
            habilidad,

            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
            ),
          ),

          subtitle: Text(
            esFavorito
                ? '❤️ Guardado en favoritos'
                : 'Agregar a favoritos',
          ),

          trailing: IconButton(

            icon: Icon(
              esFavorito
                  ? Icons.favorite
                  : Icons.favorite_border,

              color: esFavorito
                  ? Colors.red
                  : Colors.grey,

              size: 30,
            ),

            onPressed: () {
              cambiarFavorito(habilidad);
            },
          ),
        ),
      );
    },
  ),

  floatingActionButton:
      FloatingActionButton.extended(

    onPressed: () {

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              const FavoritosScreen(),
        ),
      );
    },

    icon: const Icon(
      Icons.favorite,
    ),

    label: const Text(
      'Favoritos',
    ),
  ),
);


}
}
