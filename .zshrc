## Paths ===========================
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# This sets up the source for my bash scripts:
export PATH=$PATH:~/bin:~/.local/bin

# Path to yarn
PATH=$PATH:~/.yarn/bin


# zsh ===============================
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

## zsh theme
ZSH_THEME="af-magic"

plugins=(git)

source $ZSH/oh-my-zsh.sh
## z plugin usage => $ z {hint}
source ~/.oh-my-zsh/custom/plugins/zsh-z/zsh-z.plugin.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


# vim stuff ==================================================
export EDITOR='vim'

# Open tmux automatically on terminal start ==================
# if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#  exec tmux
# fi

# Using vim functionality in Bash
# does this work???
set -o vi


# Aliases ===================
# utilities
alias ..='cd ..'
alias largefiles='ls -1Rhs | sed -e "s/^ *//" | grep "^[0-9]" | sort -hr | head -n20'
alias root='cd `git rev-parse --show-toplevel`'
alias kill3000='kill -9 $(lsof -ti:3000)'
alias kill8000='kill -9 $(lsof -ti:8000)'
alias v='nvim' # If ever need to open nvim just use $ vi
alias vim='nvim' # If ever need to open nvim just use $ vi
alias vi='nvim'
alias yabaistart='brew services start yabai'
alias yabairestart='brew services restart yabai'
alias yabaistop='brew services stop yabai'
alias yd='yarn dev'
alias ys='yarn start'
alias clearbranches='git branch | grep -v "master" | xargs git branch -D'
alias lg='Lazygit'
alias yarnlong='yarn install --verbose --network-timeout 1000000'
alias trashnvim='rm -rf ~/.local/share/nvim/ && rm -rf ~/.config/nvim'
alias tp='trash-put'

# fzf =================
function f() {
  local fname
  fname=$(fzf) || return
  vim "$fname"
}

export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
alias fp='kitty @ launch --type=tab $(find ~/Documents/Projects -type d -maxdepth 1 | fzf)'

# tmux =================
function t() {
  tmux "$1"
}


# files =================
alias init='cd ~/.config/nvim && ls -a && vim .'
alias zsh='vim ~/.zshrc'
alias wiki='cd ~/repos/Wiki && vim index.md'
alias scratch='vim ~/desktop/scratch.md'
### vscode
alias settings='cd ~/Library/Application\ Support/Code/User/ && vim settings.json'
alias keybindings='cd ~/Library/Application\ Support/Code/User/ && vim keybindings.json'

# repos
alias repos='cd ~/repos && ls -a'
alias dotfiles='cd ~/repos/dotfiles && vim .'
alias gitpractise='cd ~/repos/gitpractise && vim .'
alias cv='cd ~/repos/cv && vim michael-odonovan-CV.md'
alias writing='cd ~/repos/writing && ls -a'
alias printing3d='cd ~/repos/printing3d && ls -a'
alias myl='cd ~/repos/my-learning-site/ && ls -a'
alias mike='cd ~/repos/michaelodonovan.net/ && ls -a'

# folders
alias eliz='cd ~/ElizHelp && ls -a'
alias config='cd ~/.config && ls -a'
alias nvimfolder='cd ~/.config/nvim/ && ls -a'
alias snippets='cd ~/.config/nvim/snippets-luasnip-vscode/snippets/javascript-ecosystem/ && vim .'
alias documents='cd ~/Documents && ls -a'
alias scripts='cd ~/bin && ls -a'
alias photos='cd ~/Pictures/Photos && ls -a'

# areas
alias desktop='cd ~/Desktop && ls -a'
alias downloads='cd ~/Downloads && ls -a'
alias trash='cd ~/.local/share/Trash/files/'

# Current Workplace
alias cr='cd ~/CR/comicrelief-contentful/ && ls -a'
alias cl='cd ~/CR/component-library/ && ls -a'
alias yst='yarn styleguide'
alias donate='cd ~/CR/react-donation/ && ls -a'
alias tickets='cd ~/CR/tickets/ && vim .'
alias snaps='yarn test -u'
alias trashgql='trash-put ./graphql/schema.gql'

# git ================================
alias gpempty='git commit --allow-empty -m "Empty commit to trigger build" && git push'

# $ gpo "master" / "main"
function gpo() {
  git pull origin "$1"
}

# $ gac "commit message"
function gac() {
	git add -A
	git commit -m "$1"
}

# $ gacp "commit message"
function gacp() {
	git add -A
	git commit -m "$1"
  git push
}

# lazy lazy update for personal repos
function bosh() {
	git add -A
	git commit -m "update"
	git push
}

# update Homebrew packages
function update() {
  brew update 
  brew upgrade 
}

# node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# fzf fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

