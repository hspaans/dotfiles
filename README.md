# dotfiles

## Installation

```shell
$ sudo dnf install rcm
...
```

```shell
$ mkrc .bash_profile .bash_logout
...
```

```shell
$ mkrc -d .dotfiles .bash_profile .bash_logout
...
```

See [installation manual][githubcli-install] for installing GitHub CLI.

## Gitignore

[gitignore][gitignore] can be set per project or directory, or also [global][gitignore-global]

## Gitattributes

[gitattributes][gitattributes]

[gitattributes]: https://github.com/gitattributes/gitattributes
[gitignore]: https://github.com/github/gitignore
[gitignore-global]: https://github.com/github/gitignore/tree/master/Global
[githubcli-install]: https://github.com/cli/cli/blob/trunk/docs/install_linux.md
