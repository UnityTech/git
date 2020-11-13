# oh-my-zsh platform.sh cli plugin

This is a plugin for the popular **z shell**, now the standard on Mac OS X.  It requires [oh my zsh](https://ohmyz.sh
/) in order to work.

## Installation
To use this plugin, clone this repo to `~/.oh-my-zsh/custom/plugins`:
```shell script
git clone git@github.com:UnityTech/web-module-oh-my-zsh-platform.git ~/.oh-my-zsh/custom/plugins/platform
```
This will automatically override the default git plugin.
If you aren't yet using the default plugin,  
add `platform` to the plugins in your `~/.zshrc` file:
```shell script
plugins=(platform)
```
To reload your current terminal with the new aliases:
```shell script
source ~/.zshrc
```

## Aliases cheatsheet

| Alias         | Command                                                   |
|:--------------|:----------------------------------------------------------|
| **pf**        | platform                                                  |
| **pfalias**   | platform_list_aliases                                     |
| **pfala**     | platform activity:list --all                              |
| **pfal**      | platform activity:log                                     |
| **pfd**       | platform db:dump --gzip                                   |
| **pfea**      | platform environment:activate                             |
| **pfed**      | platform environment:delete                               |
| **pfd**       | platform environment:drush                                |
| **pfel**      | platform environment:list                                 |
| **pfl**       | platform environment:logs                                 |
| **pfer**      | platform environment:redeploy                             |
| **pfssh**     | platform environment:ssh                                  |
&nbsp;

Notes:

* Check out all commands with usage and clarifications in your local
[platform.plugin.zsh](./platform.plugin.zsh) or the
[repo's source code](https://github.com/UnityTech/web-module-oh-my-zsh-platform).  

* Alternatively, run `alias` for a list of all aliases as they're implemented,
`galias` for this cheatsheet, or `which <alias/function>` for a specific implementation.

## Credits

This project was forked from [David Deprost's excellent work](https://github.com/davidde/git).  Original development
 was done by [Jordan Koplowicz](https://github.com/koppieesq) on behalf of [Unity Technologies](https://unity.com).
