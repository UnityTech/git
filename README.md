# oh-my-zsh platform.sh cli plugin

This is a plugin for the popular z shell, now the standard on all Macs.  It requires [oh my zsh]() in order to work.

## Installation
To use this plugin, clone this repo to `~/.oh-my-zsh/custom/plugins`:
```
git clone git@github.com:UnityTech/web-module-oh-my-zsh-platform.git ~/.oh-my-zsh/custom/plugins/platform
```
This will automatically override the default git plugin.
If you aren't yet using the default plugin,  
add `platform` to the plugins in your `~/.zshrc` file:
```
plugins=(platform)
```


## Aliases cheatsheet

| Alias           | Command                                                   |
|:----------------|:----------------------------------------------------------|
| **g**           | git                                                       |
| **ga**          | git add                                                   |
| **gaa**         | git add --all                                             |
| **gai**         | git add --interactive                                     |
| **galias**      | git_list_aliases                                          |
&nbsp;

> Check out all commands with usage and clarifications in your local
> [platform.plugin.zsh](./platform.plugin.zsh) or the
> [repo's source code](https://github.com/UnityTech/web-module-oh-my-zsh-platform).  
> 
> Alternatively, run `alias` for a list of all aliases as they're implemented,
> `galias` for this cheatsheet, or `which <alias/function>` for a specific implementation.

