# Prairial

> Modèle éditorial pour Lodel du portail Prairial.

Prairial est compatible avec Lodel 1.0.

## Installation sur un site Lodel vierge

Il est nécessaire d'avoir les droits d'administrateur Lodel pour procéder à l'installation.

### 1. Import du modèle éditorial

Créer une archive ZIP à partir du contenu du dossier `model-prairial/` et la nommer `model-prairial.zip`.

**:warning: Important** : la racine du zip ne doit pas contenir le dossier `model-prairial/` lui-même mais son contenu. C'est donc l'ensemble des fichiers contenus dans `model-prairial/` qu'il faut sélectionner avec l'outil de compression, et non le dossier lui-même. Toute mauvaise compression entraînera des problèmes lors de l'utilisation des templates.

Sur le panneau d'administration du site Lodel, sélectionner "Importer un modèle éditorial", puis importer l'archive `model-prairial.zip` avec le bouton "Télécharger".

### 2. Import des traductions

Sur le panneau d'administration du site Lodel, sélectionner "Administrer les traductions du site" puis "Importer une traduction". Importer les fichiers présent dans le répertoire `translations/` du dépôt.

### 3. Préparation des données du site

Compléter les métadonnées du site dans les options de Lodel.

À la racine du site, ajouter les publications suivantes en veillant à compléter leur champ "identifiant" comme indiqué : 

| Type | Nom | Identifiant de la publication | Usage |
| ---------------------- | ----------------------- | ----------------------------- | ------------------------------------------------------------ |
| `annuairedesites` | "Catalogue des revues" | `catalogue` | Contient les élément de type `noticedesite` qui constituent catalogue. |
| `rubriqueactualites` | "Actualités du portail" | | Contient les billets des actualités. |
| `rubriqueinformations` | "Pages d'informations" | | Contient les diverses pages d'informations du site. |
| `menu` | "Texte d'accueil" | `presentation` | Contient l'encadré de présentation sur la page d'accueil, sous forme de documents de type `elementdemenu`. Le premier `elementdemenu` décrit le texte principal de la présentation. Les éléments suivants contiennent les liens. |
| `menu` | "Menu principal" | `menu-principal` | Contient les `elementdemenu` qui constituent le menu principal. |
| `menu` | "Menu footer" | `menu-footer` | Contient les `elementdemenu` qui constituent le menu du footer. |
| `annuairedesites` | "Partenaires" | `partenaires` | Contient les élément de type `noticedesite` qui correspondent aux logos des partenaires affichés dans le footer. |
| `annuairedesites` | "Tutelles" | `tutelles` | Contient les élément de type `noticedesite` qui correspondent aux logos des tutelles affichés dans le footer. |

Voir le fichier `example.jpg` à la racine du projet pour un exemple de structuration des éléments du site.

## Édition des données

### Ajout/modification d'une revue au catalogue

Les revues du catalogue sont des document de type "Notice de site" placés dans la rubrique "Catalogue des revues".

Les facettes des revues sont gérées en associant des entrées d'index aux notices via le formulaire d'édition.

### Ajout/modification d'une actualité

Les actualités sont des documents de type "Billet actualité" insérés dans la rubrique "Actualités du portail".

Le champ "Date d'expiration de l'actualité" doit être renseigné avec une date de la forme suivante : "15 décembre 2019". Il permet de déterminé la date à partir de laquelle l'actualité sera masquée sur le site.

### Ajout/modification d'une page

Les pages du site sont des documents du type "Information" ajoutés dans la rubrique "Pages d'informations". 

Ces documents doivent être stylés dans Word et importés. Les métadonnées à renseigner dans les documents sont :

* Titre
* Langue
* Texte

Pour ajouter ces pages dans un menu, voir plus bas les explications relatives à la personnalisation des menus.

### Modification du texte d'accueil

Se déplacer dans la rubrique "Texte d'accueil" où se trouvent plusieurs documents de type "Élément de menu".

Pour modifier le texte de présentation du site, éditer le premier document :

* Le champ "Titre" est le texte du titre de la présentation.
* Le champ "Description" correspond au texte de présentation.
* Le champ "Entité cible" permet de sélectionner l'entité vers laquelle renvoie le lien "En savoir plus". Sseule la première entité ajoutée dans ce champ sera prise en compte.
* Les autres champs ne sont pas utiles dans ce contexte.

Pour modifier les liens qui apparaissent sur le côté, éditer les autres documents de la rubrique "Texte d'accueil" :

* Le champ "Titre" est le texte du titre du lien.
* Le champ "Description" correspond au texte de description du lien.
* Le champ "Entité cible" permet de sélectionner l'entité vers laquelle renvoie le lien. Seule la première entité ajoutée dans ce champ sera prise en compte.
* Le champ "Vignette" permet de déterminer l'image du lien. Une image carrée 200 x 200 pixel doit être utilisée (elle sera automatiquement transformée en cercle par la maquette).

Il est possible de réordonner les liens en modifiant leur position dans la rubrique par glisser-déposer.

### Modification du menu principal et des liens du pied de page

Pour modifier le menu principal, se rendre dans le rubrique "Menu principal".

Pour modifier les liens du pied de page, se rendre dans le rubrique "Menu footer".

Ces rubriques contiennent des documents de type "Élément de menu" qui représente une entrée du menu. Les champs de ces documents doivent être renseignés ainsi : 

* Le champ "Titre" correspond au texte qui sera affiché pour ce lien/menu.
* "Entité cible" permet de sélectionner l'entité vers laquelle renvoie le lien. Seule la première entité ajoutée dans ce champ sera prise en compte. Si le champ est laissé vide alors le lien renverra à la page d'accueil du portail.
* Les autres champs ne sont pas utiles dans ce contexte.

Il est possible de réordonner les liens en modifiant leur position dans la rubrique par glisser-déposer.

### Modification des partenaires et des tutelles

Les logos sont des documents de type "Notice de site" placés respectivement dans les rubriques "Partenaires" et "Tutelles".

Seuls les champs suivants sont utiles :

* Titre (à compléter pour le texte alternatif)
* URL
* Vignette

Les autres champs n'ont pas d'utilité dans ce contexte.

## Crédits et financement

Ce projet a été développé par le [collectif Edinum](https://edinum.org) pour les Bibliothèques universitaires de l'Université Jean Moulin Lyon 3. Il a été financé par l'Université Jean Moulin Lyon 3. 

Le collectif Edinum a accepté de publier son code source sous licence libre GPL3 sans contrepartie, affirmant ainsi son engagement en faveur du logiciel libre.

## Licence

**2019, Thomas Brouard/Edinum.org**

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see http://www.gnu.org/licenses/.

