# dotfiles

User-specific application configuration is traditionally stored in so called [dotfiles][dotfiles] and stored in the home directory. By moving these to a separate directory, you can keep your dotfiles out of your home directory and still have access to them.

You can also maintain them in a git repository and use them in other situations like for GitHub Codespaces or VSCode devcontainers. Both can use a plain git repository to retreive and install the dotfiles from in the container.

## Aliases set in git

- `changelog`: Generates a changelog
- `undo`: Delete all commits not pushed to remote yes

## Remarks for some dotfiles

### .gitignore

By default, the `$XDG_CONFIG_HOME/git/ignore` file is used as a global gitignore file but requires a script to be run to set it up with a separate command. When the separate command `install.sh` is being used then all other files have to be setup via the `install.sh` script as well.

The alternative is to use the `~/.gitignore` file as a global gitignore file. This can be done by setting the `core.excludesfile` configuration option to the path of the `~/.gitignore` file with the command below to set it globally.

```bash
$ git config --global core.excludesfile ~/.gitignore
```

> [!NOTE]
> The configuration file has already been made in `~/.gitconfig` found in this repository.

### .gitattributes

By default, the `$XDG_CONFIG_HOME/git/attributes` file is used as a global gitattributes file but requires a script to be run to set it up with a separate command. When the separate command `install.sh` is being used then all other files have to be setup via the `install.sh` script as well.

The alternative is to use the `~/.gitattributes` file as a global gitattributes file. This can be done by setting the `core.attributesfile` configuration option to the path of the `~/.gitattributes` file with the command below to set it globally.

```bash
$ git config --global core.attributesfile ~/.gitattributes
```

> [!NOTE]
> The configuration file has already been made in `~/.gitconfig` found in this repository.

### .gitconfig

The `.gitconfig` file is used to configure git. And the `~/.gitconfig` file is updated in the final step by the GitHub Codespaces to set the user name and email address.

## Sources for dotfiles

* [EditorConfig][editorconfig]
* [gitattributes][gitattributes]
* [gitignore][gitignore] can be set per project or directory, or also [global][gitignore-global] as used here

[dotfiles]: https://dotfiles.github.io/
[editorconfig]: https://editorconfig.org/
[gitattributes]: https://github.com/gitattributes/gitattributes
[gitignore]: https://github.com/github/gitignore
[gitignore-global]: https://github.com/github/gitignore/tree/master/Global
[rcm-repo]: https://github.com/thoughtbot/rcm
[rcm-docs]: https://thoughtbot.github.io/rcm/rcm.7.html
