# Préparation de votre environnement pour le module Big Data

---

## Introduction au module Big Data

Dans le cadre de ce module, vous allez travailler sur un environnement de type Big Data dans une architecture virtualisée. Les travaux pratiques s’appuient sur une machine virtuelle préconfigurée afin de garantir un cadre homogène pour tous les étudiants.

Cette section vous guide dans la mise en place de l’environnement nécessaire, ainsi que dans la récupération des supports de cours et des TPs.

---

## 1. Prérequis

Les travaux pratiques du module s’appuient sur un environnement virtualisé avec une machine virtuelle déjà configurée.

Pour suivre ce module dans de bonnes conditions, vous devez disposer d’un ordinateur ayant au moins les ressources suivantes :

- Plus de 8 Go de RAM
- Plus de 8 cœurs
- Plus de 30 Go d’espace disque libre

Vous devez également disposer des droits d’administrateur sur votre machine. Cela est nécessaire pour installer et utiliser les outils de virtualisation et de gestion de la VM.

Pour faciliter le déploiement de la machine virtuelle, nous utilisons la solution Vagrant. L’ensemble des outils nécessaires au module est décrit dans ce document.

Les commandes précédées du mot “bash” sont des commandes à exécuter dans un terminal shell ou PowerShell selon votre système d’exploitation.

Exemple :

```bash
ls
```

---

## 2. Environnement virtuel

Pour déployer et configurer votre machine virtuelle (VM), nous utilisons une combinaison de Vagrant et de VirtualBox. Cette solution permet de garantir la compatibilité avec les différentes architectures de processeurs, notamment pour les étudiants équipés de Mac avec puce ARM.

L’objectif est de vous permettre de vous concentrer sur le contenu pédagogique sans être bloqué par des problèmes d’environnement.

### 2.1. Logiciel de virtualisation : VirtualBox

Téléchargez et installez VirtualBox selon votre système d’exploitation :

- Windows
- macOS

Lien officiel : https://www.virtualbox.org/wiki/Downloads

### 2.2. Vagrant

Vagrant est un outil libre et open-source permettant de créer et de configurer des environnements de développement virtuels.

Étape 1 : télécharger le fichier d’installation de Vagrant depuis le site officiel :

https://www.vagrantup.com/downloads

Étape 2 : installer Vagrant à partir du fichier téléchargé selon votre système d’exploitation.

L’exécutable de Vagrant sera ajouté automatiquement à votre chemin système, ce qui vous permettra de l’utiliser directement depuis un terminal shell ou PowerShell.

Votre environnement de virtualisation est désormais prêt.

Étape 3 : une fois l’installation terminée, redémarrez votre ordinateur afin de vous assurer que les variables d’environnement ont bien été mises à jour.

Étape 4 : pour vérifier l’installation de Vagrant, exécutez la commande suivante dans un terminal shell ou PowerShell :

```bash
vagrant --version
```

---

## 3. Supports de cours et TP

### 3.1. Introduction

Les supports de cours et les travaux pratiques sont hébergés dans un dépôt Git. Pour accéder aux ressources du module, vous devez cloner ce dépôt localement sur votre ordinateur à l’aide d’un client Git.

### 3.2. Clonage du dépôt Git

À partir de votre client Git, clonez le dépôt de la formation.

La procédure ci-dessous s’applique à l’environnement VS Code.

Étape 1 : cliquez sur l’onglet “Contrôle de code source” dans la barre latérale gauche :

![image.png](./images/installation_3.png)

Étape 2 : cliquez sur le bouton “Cloner le dépôt”.

Indiquez ensuite l’URL du dépôt fournie par le responsable du cours ou l’enseignant, puis cliquez sur “URL de dépôt” :

```text
BGM2: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@github.com:oaidel38090/architecture_distribuee_2026.git
```

En cas d’échec, vérifiez bien l’URL avant de la copier-coller, car des caractères spéciaux peuvent parfois être introduits lors du transfert.

![image.png](./images/installation_4.png)

Une boîte de dialogue s’ouvre alors pour vous permettre de choisir l’emplacement de stockage du dépôt local. L’emplacement sélectionné est référencé comme le GITDIR.

Exemple :

```bash
$GITDIR = /mon/repertoire/de/cours
```

![image.png](./images/installation_5.png)

Si vous utilisez un client Git classique, la commande de clonage est la suivante :

```bash
cd $GITDIR
git clone https://BGM2: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@github.com/oaidel38090/bigdata_M2_2026.git
```

L’ensemble du contenu de la formation sera téléchargé sur votre ordinateur :

- Les supports de cours
- Les TP
- La configuration de votre VM à appliquer avec Vagrant

### 3.3. Mise à jour des supports

Les éléments du projet sont régulièrement mis à jour tout au long du module. Vous serez donc amené à mettre à jour votre dépôt Git local.

Pour récupérer les derniers changements, rendez-vous dans l’onglet “Contrôle de code source”, puis cliquez sur “Tirer les derniers changements” :

![image.png](./images/installation_6.png)

Important : afin d’éviter les conflits avec les mises à jour qui seront apportées tout au long du module, il vous est demandé de copier les TP dans le répertoire MES_TPS avant de commencer à les travailler.

Bravo, vous êtes désormais prêt à suivre le module.

---

## 4. Gestion de la VM

Pour les travaux pratiques, nous utiliserons une machine virtuelle. La VM s’appuie sur une image disponible sur Vagrant Cloud. Pour faciliter le déroulement de la formation, une configuration de la VM est disponible dans le dépôt Git, dans le répertoire vagrant/virtualbox.

### 4.1. Démarrage de la VM

Pour déployer votre VM, ouvrez un terminal PowerShell ou shell, puis exécutez la commande suivante :

```bash
cd $GITDIR/vagrant/virtualbox/client
vagrant up
```

Cette commande télécharge l’image de la VM, la configure puis la démarre.

Pour vérifier l’état de votre VM, exécutez :

```bash
vagrant global-status
```

Docker sera installé au préalable sur votre VM, et l’ensemble des images utilisées dans le module sera automatiquement téléchargé.

Si l’installation s’est correctement déroulée, vous devriez pouvoir accéder au service JupyterLab à l’adresse suivante :

[http://192.168.56.30:9999/lab](http://192.168.56.30:9999/lab)

### 4.2. Arrêt de la VM

Une fois votre VM opérationnelle, vous pouvez l’arrêter avec la commande suivante :

```bash
cd $GITDIR/vagrant/virtualbox/client
vagrant halt
```

### 4.3. Suppression de la VM

À la fin de la formation, vous pouvez supprimer votre VM avec la commande suivante :

```bash
cd $GITDIR/vagrant/virtualbox/client
vagrant destroy
```

---

Vous êtes maintenant prêt à commencer le module Big Data.

