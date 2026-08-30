//Pantalla Principal 1
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'perfil_screen.dart';
import 'habilidades_screen.dart';
import 'favoritos_screen.dart';
import 'contacto_screen.dart';

class HomeScreen extends StatelessWidget {
const HomeScreen({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text(
'Mi Perfil',
style: GoogleFonts.poppins(
fontWeight: FontWeight.bold,
),
),
centerTitle: true,
backgroundColor: Colors.indigo,
foregroundColor: Colors.white,
),


  body: SingleChildScrollView(
    padding: const EdgeInsets.all(20),

    child: Column(
      children: [

        // FOTO DE PERFIL
        const CircleAvatar(
          radius: 70,
          backgroundImage: AssetImage(
            'assets/perfil.jpg',
          ),
        ),

        const SizedBox(height: 20),

        // NOMBRE
        Text(
          'Hernán Ronquillo',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.indigo.shade900,
          ),
        ),

        const SizedBox(height: 8),

        Text(
          'Mi Primera Aplicación en Flutter',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Colors.grey.shade700,
          ),
        ),

        const SizedBox(height: 30),

        // BOTÓN PERFIL
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const PerfilScreen(),
                ),
              );
            },
            icon: const Icon(Icons.person),
            label: const Text(
              'Mi Perfil',
            ),
          ),
        ),

        const SizedBox(height: 12),

        // BOTÓN HABILIDADES
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const HabilidadesScreen(),
                ),
              );
            },
            icon: const Icon(Icons.code),
            label: const Text(
              'Mis Habilidades',
            ),
          ),
        ),

        const SizedBox(height: 12),

        // BOTÓN FAVORITOS
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
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
              color: Colors.red,
            ),
            label: const Text(
              'Mis Favoritos',
            ),
          ),
        ),

        const SizedBox(height: 12),

        // BOTÓN CONTACTO
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const ContactoScreen(),
                ),
              );
            },
            icon: const Icon(Icons.email),
            label: const Text(
              'Contacto',
            ),
          ),
        ),

        const SizedBox(height: 30),

        // TARJETA INFORMATIVA
        Card(
          elevation: 4,

          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Column(
              children: [

                const Icon(
                  Icons.flutter_dash,
                  size: 50,
                  color: Colors.indigo,
                ),

                const SizedBox(height: 10),

                Text(
                  'Bienvenido a mi aplicación',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  'Esta aplicación fue desarrollada '
                  'como parte de la Actividad Integradora 2 '
                  'utilizando Flutter.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 25),

        Text(
          'Autor: Hernán Ronnie Ronquillo Yanchapanta',
          style: GoogleFonts.poppins(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade600,
          ),
        ),
      ],
    ),
  ),
);


}
}
