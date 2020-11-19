# Aliases
#############

alias pf='platform'
alias pfalias='platform_list_aliases'

alias pfala='platform activity:list --all'
alias pfal='platform activity:log'

alias pfdbd='platform db:dump --gzip'

alias pfea='platform environment:activate'
alias pfed='platform environment:delete'
alias pfd='platform environment:drush'
alias pfel='platform environment:list'
alias pfl='platform environment:logs'
alias pfer='platform environment:redeploy'
alias pfssh='platform environment:ssh'

# Functions
################

# List all git aliases from the README:
function platform_list_aliases() {
  filename=~/.oh-my-zsh/custom/plugins/platform/README.md
  from=$(grep -Fno '| **pf** ' ${filename} | cut -f1 -d:)
  stop=$(grep -no '&nbsp;' ${filename} | cut -f1 -d:)
  to=$((stop - 2))

  echo '_____________________________________________________________________________
|           |                                                               |
| Alias     | Command                                                       |
|___________|_______________________________________________________________|
|           |                                                               |'

  sed -n "${from},${to}p;${stop}q" ${filename} | # Take out table
    tr -d '*\\' |    # Remove **bold** and \ escapes
    sed 's/.$//' |   # Remove last '|' because its no longer lining up
    while read -r line ; do
      echo "${(r:76:)line}" # Pad spaces to 76 chars
    done |
    sed 's/$/|/'     # Re-append final '|'

  echo '|___________|_______________________________________________________________|


Notes:
- If you want to see all alias implementations, run `alias`.
- If you want to see a specific implementation, run `which <alias/function>`.'
}
