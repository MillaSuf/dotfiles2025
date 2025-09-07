# Message de bienvenue
echo "Bienvenue, $(whoami)!"

# Aliases
alias ls='ls -l -a'
alias ll='ll -l -a'
alias c='clear'
alias grepc='grep --color=always'

# Creer nouveau dossier et s'y deplacer
function md() {
    mkdir -p "$@" && cd "$@"
}

# Creer un fichier et l'ouvrir avec vim
function vim(){
    touch "$@" && vim "$@"
}

# Fonction : recherche insensible à la casse
mygrep() {
    grep -i --color=always "$@"
}

# Prompt PS1
if [ "$USER" = "angel" ]; then
    PS1='[\u@\h \W]\$'
else
    PS1='[\W]\$'
fi

# Ajouter ~/bin à PATH
export PATH="$HOME/bin:$PATH"
