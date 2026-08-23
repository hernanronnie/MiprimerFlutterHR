import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MiPerfilApp());
}

class MiPerfilApp extends StatelessWidget {
  const MiPerfilApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi Perfil',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
        ),
        useMaterial3: true,
      ),
      home: const PerfilPage(),
    );
  }
}

class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  bool mostrarMensaje = false;

  void mostrarInformacion() {
    setState(() {
      mostrarMensaje = !mostrarMensaje;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      // Barra superior
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

      // Contenido principal
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [

              // Icono principal
              // Foto de perfil
              Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.20),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/perfil.jpg',
                    width: 130,
                    height: 130,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Nombre
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

              // Carrera
              Text(
                'Estudiante de Ingeniería de Sistemas Inteligentes',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.grey.shade700,
                ),
              ),

              const SizedBox(height: 25),

              // Tarjeta de información
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        'Sobre mí',
                        style: GoogleFonts.poppins(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo,
                        ),
                      ),

                      const SizedBox(height: 12),

                      Text(
                        'Soy Hernán Ronquillo. Me interesa la tecnología, '
                        'los sistemas informáticos, la programación y el '
                        'desarrollo de soluciones tecnológicas.',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          height: 1.5,
                        ),
                      ),

                      const SizedBox(height: 18),

                      // Row
                      Row(
                        children: [
                          Icon(
                            Icons.computer,
                            color: Colors.indigo.shade600,
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Tecnología y sistemas',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Row(
                        children: [
                          Icon(
                            Icons.code,
                            color: Colors.indigo.shade600,
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Programación y desarrollo',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),

                       const SizedBox(height: 10),

                      Row(
                        children: [
                          Icon(
                            Icons.business,
                            color: Colors.indigo.shade600,
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Laboro de manera dependiente',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // Botón
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: mostrarInformacion,
                  icon: Icon(
                    mostrarMensaje
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  label: Text(
                    mostrarMensaje
                        ? 'Ocultar información'
                        : 'Mostrar información',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Mensaje que aparece al presionar el botón
              if (mostrarMensaje)
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Colors.indigo.shade50,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.indigo.shade200,
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.waving_hand,
                        color: Colors.indigo.shade700,
                        size: 30,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          '¡Hola! Bienvenido a mi perfil. '
                          'Gracias por visitar mi primera aplicación '
                          'desarrollada en Flutter.',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.indigo.shade900,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              const SizedBox(height: 30),

              Text(
                'Mi Primera Aplicación en Flutter',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  color: Colors.grey.shade600,
                ),
              ),

              const SizedBox(height: 5),

              Text(
                'Autor: Hernán Ronnie Ronquillo Yanchapanta',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}