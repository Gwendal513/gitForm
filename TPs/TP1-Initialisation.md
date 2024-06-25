# TP1 – Initialisation

## Installation

```console
sudo apt install git
```

### 💻 Invite bash

Si vous souhaitez avoir une meilleure intégration Git dans votre terminal.
Vous pouvez installer une invite de commande personnalisée qui vous
indiquera automatiquement l’état de votre dépôt local.

Installation via Git :

```console
git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt
```

Puis injection dans le fichier `.bash_aliases` :

```bash title="~/.bash_aliases"
cat <<EOF >> "${HOME}/.bash_aliases"
if [ -f "${HOME}/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source "${HOME}/.bash-git-prompt/gitprompt.sh"
fi
EOF
```

## Configuration

Sur Git les versions sont signées par une adresse de courriel et un nom.

Git utilise les champs de configuration ci-dessous pour signer les commits :

| Nom de la variable | Description                          | Exemple                   |
| :----------------: | :----------------------------------- | :------------------------ |
|    `user.name`     | Nom ou pseudo de l’utilisateur       | "PENAUD Loïc"             |
|    `user.email`    | Adresse de courriel de l’utilisateur | "loic.penaud@partnre.com" |

```console
git config --global user.name "NOM Prénom"
git config --global user.email "nom.prénom@partnre.com"
```

### 📍 Changement du nom de la branche principale"

```console
git config --global init.defaultBranch main
```

### 🛣️ Pour aller plus loin

Rendez-vous sur la partie [Signature GPG](../gpg.md).

## Premier dépôt

### Versionnons le bon contenu

Afin de ne pas versionner tout vos documents, créons un nouveau répertoire :

```console
mkdir -p ~/git/infotel-git-tp
```

Puis définissons notre répertoire de travail :

```console
cd ~/git/infotel-git-tp
```

Pour créer un dépôt local à l’aide de la commande suivante :

```console
git init
```

### 📝 Qu’est-ce qu’il se passe ?

Git crée sa base de données objets stocké sous la forme d’une arboresence
à la racine du dépôt.

Donc si vous supprimez le dossier `.git` vous déinstallerez le dépôt.
Toute les commandes Git utilise ces données.
