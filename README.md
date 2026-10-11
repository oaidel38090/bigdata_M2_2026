# PREPARATION DE VOTRE ENVIRONNEMENT POUR LE MODULE ARCHITECTURE DISTRIBUEE

---
## Introduction au Module Architecture distribuée

## 1 - Prérequis

Les travaux pratiques du module s'appuieront sur un environnement virtualisé avec une machine virtuelle déjà configurée.

Pour ce module, vous devrez disposer d'un ordinateur ayant **au moins** les ressources suivantes :

- Plus de 8 Go de RAM
- Plus de 8 cœurs
- Plus de 30 Go d'espace disque libre

En termes de privilèges, vous devrez disposer des droits d'administrateur sur votre machine. Pour faciliter le déploiement de votre VM, nous nous appuierons sur la solution Vagrant. L'ensemble des outils nécessaires à ce module sont décrits dans ce document.

Toutes les commandes précédées du mot 'bash' représenteront des commandes à exécuter dans un client shell ou PowerShell selon votre système d'exploitation.
Par exemple, la cellule suivante indique que la commande ls devra être exécutée dans un client shell :

```
bash
ls
```
## 1 - Prérequis

Les travaux pratiques du module s'appuieront sur un environnement virtualisé avec une machine virtuelle déjà configurée.

Pour ce module, vous devrez disposer d'un ordinateur ayant **au moins** les ressources suivantes :

- Plus de 4 Go de RAM
- Plus de 4 cœurs
- Plus de 10 Go d'espace disque libre

En termes de privilèges, vous devrez disposer des droits d'administrateur sur votre machine. Pour faciliter le déploiement de votre VM, nous nous appuierons sur la solution Vagrant. L'ensemble des outils nécessaires à ce module sont décrits dans ce document.

Toutes les commandes précédées du mot 'bash' représenteront des commandes à exécuter dans un client shell ou PowerShell selon votre système d'exploitation.
Par exemple, la cellule suivante indique que la commande ls devra être exécutée dans un client shell :

```
bash
ls
```

## 2 - Environnement virtuel

Pour déployer et configurer votre machine virtuelle (VM), je s'occupe de tout tu s'occupe de rien ;-).

Afin d’assurer la compatibilité de la formation avec les différentes architectures de processeurs, y compris pour les étudiants utilisant des Mac équipés de puces ARM de nouvelle génération, nous adopterons une solution combinée basée sur Vagrant et d'une solution de virtualisation VMware ou VirtualBox. Cela nous permettra de contourner les problèmes d’environnement et de nous focaliser sur l'essentiel de la formation.


### 3 - Logiciel de virtualisation : VirtualBox

Télécharger et installer VirtualBox selon que vous soyez sur Windows ou MAC OSX.

https://www.virtualbox.org/wiki/Downloads


## 4 Vagrant

Vagrant est un logiciel anciennement libre et open-source pour la création et la configuration des environnements de développement virtuels.

### 4.1 Installation de Vagrant


**Étape 1 :** Télécharger le fichier d'installation de Vagrant depuis [le site officiel](https://www.vagrantup.com/downloads).

**Étape 2 :** Installez Vagrant à partir du fichier téléchargé en fonction de votre système d'exploitation.

L'exécutable de Vagrant sera automatiquement ajouté à votre chemin système, vous permettant ainsi d'utiliser la commande vagrant à partir d'un terminal ssh ou powershell si vous êtes sous Windows.

Votre environnement de virtualisation est à présent prêt.


**Étape 4 :** Une fois l’installation terminée, redémarrez votre ordinateur pour vous assurer que les variables d’environnement ont bien été mises à jour.

**Étape 5 :** Pour vérifier l'installation de Vagrant, exécutez la commande suivante dans un terminal ssh ou powershell pour obtenir la version de votre vagrant :

```
bash
vagrant --version
```

 ## 5 Support de cours et TP

### Introduction

Les TPs et les cours sont hébergés dans un projet gitlab.
Pour accéder au cours et TP, vous devrez cloner le projet gitlab en local sur votre ordinateur avec un client git.
Le clonage du projet git peut être réalisé à partir d'un client git.


### 5.1 Clonage du repo git

A partir de votre client `git` cloner le repo gitlab de la formation.
La procédure décrite ci-dessous s'applique uniquement pour VS Code.

Cliquer dans le menu de gauche sur l'onglet `Contrôle de code source`:

![image.png](./images/installation_3.png)

Cliquer sur le bouton `Cloner le dépôt`, indiquer le dépôt `https://github.com/oaidel38090/bigdata_M2_2026.git` et cliquer sur `URL de dépôt`   :

En cas d'échec, merci de bien vérifier l'url du dépôt lors du copier/coller des caractères spéciaux peuvent se glisser.

![image.png](./images/installation_4.png)



Une boite de dialogue s'ouvre pour identifier l'emplacement où sera stocké votre repo local :
L'emplacement selectionné sera référencé comme le `GITDIR`.

```
$GITDIR = /mon/repertoire/de/cours
```

![image.png](./images/installation_5.png)


ou avec un client git classique :

```
git clone https://github.com/oaidel38090/bigdata_M2_2026.git
```


L'ensemble du contenu de la formation sera téléchargé sur votre ordinateur :
* Les supports de cours
* Les TP
* La configuration de votre VM à appliquer par vagrant

### 5.2 Mise à jour des supports

L'ensemble des éléments du projet sera régulièrement mis à jour tout au long du module, vous serez donc amené à mettre à jour votre repo git local.

Pour mettre à jour le contenu de la formation, il vous suffira de vous rendre dans l'onglet `Contrôle de code source` puis de `tirer` les derniers changements :


![image.png](./images/installation_6.png)


Notez que pour ne pas entrer en conflit avec les mises à jour qui seront apportées tout au long du module, il vous est demandé avant de travailler sur un TP de le copier dans le répertoire MES_TPS.

Bravo, vous êtes à présent prêt à suivre le module.



## 6 Déploiement de la VM

Pour les TP, nous utiliserons une à plusieurs machines virtuelles. la VM s'appuiera sur une image disponible sur [vagrantCloud](https://app.vagrantup.com/boxes/search).
Pour faciliter le déroulement de la formation, une configuration de la VM est disponible dans votre repo gitlab dans le répertoire vagrant/vmware.

Pour déployer votre VM, il vous suffit d'ouvrir un terminal powershel/ shell puis de lancer la commande suivante :

```
cd $GITDIR/vagrant/virtualbox/client
vagrant up
```
Cette commande s'occupe de télécharger l'image de la VM, de la configurer puis de la démarrer.


Vérifier l'état de votre VM avec la commande suivante :

```
vagrant global-status
```

Une fois votre VM opérationnelle,  arrêter celle-ci avec la commande :

```
cd $GITDIR/vagrant/virtualbox/client
vagrant halt
```

Nous déploierons pendant le module, un cluster Hadoop avec 4 VM.
Pour préparer en amont ce TP, merci de lancer les commandes suivantes :

```
cd $GITDIR/vagrant/virtualbox/cluster
vagrant up
```

Cette commande s'occupe d'initialiser 4 VM puis de les démarrer.

Une fois les VM opérationnelles,  arrêter les avec la seule commande :

```
cd $GITDIR/vagrant/virtualbox/cluster
vagrant halt
```

Vous êtes à présent prêt pour le module !!!

A la fin de la formation, vous pourrez supprimer vos VM avec la commande suivante :


```
cd $GITDIR/vagrant/virtualbox/client
vagrant destroy
```

```
cd $GITDIR/vagrant/virtualbox/cluster
vagrant destroy
```

