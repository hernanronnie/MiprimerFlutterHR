// Pantalla 4 
//
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactoScreen extends StatelessWidget {
  const ContactoScreen({super.key});

  void mostrarMensaje(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'Gracias por visitar mi aplicación.',
        ),
      ),
    );
  }

  void mostrarDialogo(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Información'),
          content: const Text(
            'Puedes comunicarte conmigo mediante los medios disponibles.',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contacto',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            const SizedBox(height: 20),

            const Icon(
              Icons.contact_mail,
              size: 100,
              color: Colors.indigo,
            ),

            const SizedBox(height: 20),

            Text(
              'Contacto',
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),

            const SizedBox(height: 30),

            Card(
              child: Column(
                children: [

                  const ListTile(
                    leading: Icon(Icons.email),
                    title: Text('Correo electrónico'),
                    subtitle: Text('h.ronquillo@ecotec.edu.ec'),
                  ),

                  const Divider(),

                  const ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('Teléfono'),
                    subtitle: Text('+593 968 804 075'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  mostrarMensaje(context);
                },
                icon: const Icon(Icons.message),
                label: const Text('Mostrar mensaje'),
              ),
            ),

            const SizedBox(height: 10),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  mostrarDialogo(context);
                },
                icon: const Icon(Icons.info),
                label: const Text('Ver información'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}