
---

# Gopigofinal_udm_204

Le but de ce projet est de faire rouler le robot GoPiGo du point A au point B en évitant les obstacles.

## Installation

Pour télécharger le projet **Gopigofinal_udm_204**, veuillez utiliser la commande suivante :

```bash
git clone https://github.com/Nathan2413/gopigofinal_udm_204.git
```

Une fois téléchargé, entrez dans le répertoire du projet :

```bash
cd gopigofinal_udm_204
```

## Configuration du package GoPiGo3

Pour configurer le package GoPiGo3, suivez les étapes ci-dessous :

1. Créez un répertoire `src` :

```bash
mkdir src
```

2. Entrez dans le répertoire `src` :

```bash
cd src
```

3. Téléchargez le package GoPiGo3 :

```bash
git clone https://github.com/Nathan2413/gopigo3_udm_204.git
```

4. Revenez dans le répertoire du projet :

```bash
cd ..
```

5. Configurez l'environnement de votre terminal pour qu'il reconnaisse les packages ROS :

```bash
source devel/setup.bash
```

6. Lancez le fichier de lancement pour initialiser le robot :

```bash
roslaunch bringup_car differential_drives.launch
```

## Lancement du robot GoPiGo3

1. Ouvrir un nouveau terminal
2. Entrer dans le répertoire du projet :

```bash
cd gopigofinal_udm_204
```

3. Lancer le programme Python :

```bash
python3 finalisation.py
```

4. Pour que le robot commence son départ, il faut cliquer sur la touche `a`.

---
