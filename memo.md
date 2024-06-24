# Aide-Mémoire git

Version imprimable :

* [ODT](./assets/memo.odt)
* [PDF](./assets/memo.pdf)

## Aide

```
help SUBJECT
```

## Initialisation

```
init
```

## Journalisation

```
log [--graph] [--oneline] [--pretty=FORMAT]
  [--decorate=[short|full|auto|no]]
  [--abbrev-commit]
  [--all]
  [--branches MOTIF]
  [--tags MOTIF]
reflog
```

## Paramétrage

```
config [--global] --edit
config [--global] CLÉ [VALEUR]
```

## Index

```
add [...FICHIERS]
restore [--staged]
```

## Soumission

```
commit [-m MESSAGE] [--amend] [...FICHERS SUIVIS]
revert [--no-edit] [(-n | --no-commit)] ...COMMITS
revert (--abort | --continue | --skip)
show VERSION:FICHIER
```

## Dépôt

```
clone [--recursive] LIEN_DÊPOT [RÉPERTOIRE]
fetch [--prune] [DÉPÔT]
pull [--set-upstream] [--rebase] [DÉPÔT] [BRANCHE]
push [--set-upstream] [(-f | --force)] [-o ci.skip] [DÉPÔT] [[:]BRANCHE]
remote show [DÉPÔT]
remote add DÉPÔT LIEN
remote get-url DÉPÔT
remote update DÉPÔT NOUVEAU_DÉPÔT
remote remove DÉPÔT
```

## Remisage

```
stash (push [-m MESSAGE])
stash pop
stash drop
diff [...(FICHIERS | COMMITS)] [> [CORRECTIF]]
apply [CORRECTIF]
clean [(--interative | -i)] [...FICHIERS]
```

## Branche

```
checkout [-b] BRANCHE
branch (-D | --delete --force) BRANCHES
branch (-m | --move) SRC DEST
branch (-c | --copy) SRC DEST
branch -vv
branch --list
```

## Étiquetage

```
tag NOM [COMMIT]
tag (-l | --list) [GLOB]
tag (-d | --delete) ÉTIQUETTE
```

## Rembobinage

```
rebase [-i | --interactive] BRANCHE
rebase (--abort | --continue | --skip)
merge-base [DÉPÔT/]BRANCHE [DÉPÔT/]MÈRE
```

## Fusion

```
merge BRANCHE
merge (--abort | --continue | --skip)
```

## Picorage

```
cherry-pick ...COMMITS
cherry-pick (--abort | --continue | --skip)
```

## Astuce

Toujours faire des **validations** avec **peu de changements** dans le but de
**simplifier** les **fusions** ou les **rembobinages**.
