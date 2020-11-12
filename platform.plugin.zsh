# Aliases
#############

alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias galias='git_list_aliases'

# Functions
################

# List all git aliases from the README:
function git_list_aliases() {
  filename=~/.oh-my-zsh/custom/plugins/platform/README.md
  from=$(grep -Fno '| **g** ' ${filename} | cut -f1 -d:)
  stop=$(grep -no '&nbsp;' ${filename} | cut -f1 -d:)
  to=$((stop - 2))

  echo '_______________________________________________________________________________
|             |                                                               |
| Alias       | Command                                                       |
|_____________|_______________________________________________________________|
|             |                                                               |'

  sed -n "${from},${to}p;${stop}q" ${filename} | # Take out table
    tr -d '*\\' |    # Remove **bold** and \ escapes
    sed 's/.$//' |   # Remove last '|' because its no longer lining up
    while read -r line ; do
      echo "${(r:78:)line}" # Pad spaces to 78 chars (zsh specific)
    done |
    sed 's/$/|/'     # Re-append final '|'

  echo '|_____________|_______________________________________________________________|


Note:
If you want to see all alias implementations, run `alias`.
If you want to see a specific implementation, run `which <alias/function>`.'
}
