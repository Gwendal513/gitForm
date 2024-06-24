# Signature GPG

Git peut utiliser les clés GPG pour signer vos commits. En utilisant une
signature GPG vous confirmez votre identité plus fortement.

## Installation

Pour générer la clé vous aurez besoins d’une implémentation de
[OpenPGP](https://www.ietf.org/rfc/rfc4880.txt). Comme
[GnuPG](https://gnupg.org/) disponible sur les sytèmes Unix.

```console
apt install gnupg
```

## Génération

Les valeurs recommandées par la génération de clés sont les suivantes :

- Type : RSA et RSA
- Longeur : 4096 bits
- Phrase secrète : Fort

```console
gpg --full-generate-key
```

Rentrez votre nom et votre adresse de courriel rattachés au dépôt distant.

## Identifiant unique

Une fois la clé générée, récupérérez l’identifiant unique de la clé.

```console
gpg --list-secret-keys --keyid-format LONG EMAIL
```

Cette commande permet d’obtenir l’identifiant public et privé de la GPG. Les
premières lignes de sortie devraient être sous la forme ci-dessous :

```
sec TYPE/PUBLIC_ID DATE [SC]
    PRIVATE_ID
```

## Configuration de Git

### Ajout de la clé

Le champ `user.signingKey` renseigné par l’identifiant unique de la clé privée
permet d’indiquer à Git quelle clé il doit utiliser pour signer les commits.

```console
git config --global user.signingKey PRIVATE_ID
```

### Utiliser la clé pour la validation

Pour rendre obligatoire la signature des commits on peut mettre le champ
`commit.gpgSign` à vrai.

```console
git config --global commit.gpgSign true
```

## Configuration Gitlab

Il faut inscrire la clé publique de la signature GPG pour que l’instance de
Gitlab puisse reconnaitre la signature.

Pour cela on va copier la clé publique :

```console
gpg --armor --export PUBLIC_ID | xclip -selection clipboard
```

??? warning "Installation xclip"

    Dans la commande précédente on utilise la commande `xclip`. Celle-ci permet de
    manipuler le presse-papier.

    Pour l’installer :

    ```console
    sudo apt install xclip
    ```

Pour inscrire votre clé rendez-vous dans la partie configuration de clé GPG de
votre profil, puis collez la clé publique, ensuite validez le formulaire. Vous devriez recevoir une notification de confirmation par courriel.
