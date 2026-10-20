# Ma Garderie

Application mobile de présentation des activités d'une garderie d'enfants, développée dans le cadre d'un TP Git/GitHub et développement mobile.

## Fonctionnalités

- Splash Screen avec image et transition automatique après 3 secondes
- Page principale avec AppBar, Drawer (Accueil, Activités, À propos) et Floating Action Button
- Liste des activités (icône, titre, description) à partir de données statiques
- Interactions : message « Nouvelle activité » et affichage du titre de l'activité dans un Snackbar

## Technologies utilisées

- Flutter (Dart)
- Git et GitHub

## Installation et exécution

1. Installer [Flutter](https://docs.flutter.dev/get-started/install) et configurer un émulateur Android, un appareil ou Chrome
2. Cloner le dépôt :

```bash
   git clone https://github.com/Ahmed-Bouguerra/garderie-mobile.git
   cd garderie-mobile
```

3. Installer les dépendances :

```bash
   flutter pub get
```

4. Lancer l'application :

```bash
   flutter run
```

   Pour lancer sur Chrome :

```bash
   flutter run -d chrome
```

## Captures d'écran

### Splash Screen
![Splash Screen](<screenshots/Splash Screen.png>)

### Page principale
![Page principale](<screenshots/Page principale.png>)

### Page Activités
![Page Activités](<screenshots/Activités.png>)

### Drawer ouvert
![Drawer ouvert](<screenshots/Drawer ouvert.png>)

### Page À propos
![Page À propos](<screenshots/Page A propos.png>)

### Messages après interaction

Clic sur le bouton `+` :

![Snackbar Nouvelle activité](<screenshots/Snackbar Nouvelle activité.png>)

Clic sur une activité :

![Snackbar titre de l'activité](<screenshots/Snackbar titre de l'activité.png>)

## Auteur

Ahmed Bouguerra : DSI 31, ISET Tozeur