import 'package:flutter/material.dart';

const List<Map<String, dynamic>> activites = [
  {"id": 1, "titre": "Dessin et coloriage", "description": "Développement de la créativité", "icone": "🎨"},
  {"id": 2, "titre": "Jeux éducatifs", "description": "Apprentissage par le jeu", "icone": "🧩"},
  {"id": 3, "titre": "Musique et chansons", "description": "Éveil musical des enfants", "icone": "🎵"},
  {"id": 4, "titre": "Lecture de contes", "description": "Découverte des histoires", "icone": "📚"},
  {"id": 5, "titre": "Activités sportives", "description": "Développement de la motricité", "icone": "⚽"},
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void showMessage(String message) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), duration: const Duration(seconds: 3)),
    );
  }

  void selectItem(int index) {
    setState(() => selectedIndex = index);
    Navigator.pop(context);
  }

  Widget buildBody() {
    if (selectedIndex == 2) {
      return const Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Text(
            'Ma Garderie : application mobile de présentation des activités d\'une garderie d\'enfants.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
      );
    }

    final liste = ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: activites.length,
      itemBuilder: (context, index) {
        final a = activites[index];
        return Card(
          child: ListTile(
            leading: Text(a['icone'], style: const TextStyle(fontSize: 32)),
            title: Text(a['titre']),
            subtitle: Text(a['description']),
            onTap: () => showMessage(a['titre']),
          ),
        );
      },
    );

    if (selectedIndex == 0) {
      return Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Bienvenue à Ma Garderie 👋',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: liste),
        ],
      );
    }

    return liste;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ma Garderie')),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.orange),
              child: Text('Ma Garderie',
                  style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Accueil'),
              selected: selectedIndex == 0,
              onTap: () => selectItem(0),
            ),
            ListTile(
              leading: const Icon(Icons.toys),
              title: const Text('Activités'),
              selected: selectedIndex == 1,
              onTap: () => selectItem(1),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('À propos'),
              selected: selectedIndex == 2,
              onTap: () => selectItem(2),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showMessage('Nouvelle activité'),
        child: const Icon(Icons.add),
      ),
      body: buildBody(),
    );
  }
}