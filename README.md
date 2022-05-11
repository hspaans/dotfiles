# dotfiles

User-specific application configuration is traditionally stored in so called [dotfiles][dotfiles] and stored in the home directory. By moving these to a separate directory, you can keep your dotfiles out of your home directory and still have access to them. You can also maintain them in a git repository and use them in other situations like for GitHub Codespaces or VSCode devcontainers.

GitHub Codespaces and VSCode devcontainers can use a plain git repository to retreive and install the dotfiles from in the container, but this way is incompatible with how dotfiles are handles by other tools like [RCM][rcm-repo]. By adding an installation script to the repository, you can use the same script to install the dotfiles in the container and on a host machine.

## Installing and using RCM

Installation of RCM is done by following the examples below or on [RCM][rcm-repo]. Using it is pretty straight forward and you can find the documentation [here][rcm-docs] or via `man rcm`.

On Debian-based systems, run the following command:

```shell
sudo apt install rcm
```

On Red Hat-based systems, run the following command:

```shell
sudo dnf install rcm
```

For Debian-based devcontainer, add the following lines to the container file:

```docker
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends rcm
```

## Additional dotfiles

* [editorconfig][editorconfig]
* [gitattributes][gitattributes]
* [gitignore][gitignore] can be set per project or directory, or also [global][gitignore-global]

[dotfiles]: https://dotfiles.github.io/
[editorconfig]: https://editorconfig.org/
[gitattributes]: https://github.com/gitattributes/gitattributes
[gitignore]: https://github.com/github/gitignore
[gitignore-global]: https://github.com/github/gitignore/tree/master/Global
[rcm-repo]: https://github.com/thoughtbot/rcm
[rcm-docs]: https://thoughtbot.github.io/rcm/rcm.7.html
