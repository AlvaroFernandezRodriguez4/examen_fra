import 'package:flutter/material.dart';

class ListviewScreenFra extends StatelessWidget {
  const ListviewScreenFra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
        automaticallyImplyLeading: false, 
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://as01.epimg.net/meristation/imagenes/2013/09/17/noticia/1379397600_125748_1532601596_portada_normal.jpg',
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.sports_tennis, color: Colors.green),
            title: const Text("Pistas"),
            onTap: () {
              Navigator.pushNamed(context, 'pistas_screen');
            },
          ),
          ListTile(
            leading: const Icon(Icons.person, color: Colors.green),
            title: const Text("Monitores"),
            onTap: () {
              Navigator.pushNamed(context, 'monitores_screen');
            },
          ),
          ListTile(
            leading: const Icon(Icons.calendar_today, color: Colors.green),
            title: const Text("Reservas"),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text("Aviso"),
                  content: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                          "El sistema de reservas está deshabilitado en estos momentos."),
                      SizedBox(height: 20),
                      FlutterLogo(size: 50),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.green,
                      ),
                      child: const Text("Cancelar"),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
