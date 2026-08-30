//Pantalla 2 del Perfil

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

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


            Text(
              'Hernán Ronquillo',
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              'Estudiante de Ingeniería de Sistemas Inteligentes',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 16,
              ),
            ),

            const Divider(height: 40),

            Card(
              child: Column(
                children: [

                  const ListTile(
                    leading: Icon(
                      Icons.computer,
                      color: Colors.indigo,
                    ),
                    title: Text('Tecnología'),
                    subtitle: Text(
                      'Interés en sistemas y tecnología.',
                    ),
                  ),

                  const ListTile(
                    leading: Icon(
                      Icons.code,
                      color: Colors.indigo,
                    ),
                    title: Text('Programación'),
                    subtitle: Text(
                      'Desarrollo de aplicaciones.',
                    ),
                  ),

                  const ListTile(
                    leading: Icon(
                      Icons.business,
                      color: Colors.indigo,
                    ),
                    title: Text('Experiencia laboral'),
                    subtitle: Text(
                      'Trabajo dependiente.',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}