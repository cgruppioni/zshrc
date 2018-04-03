BASE="$HOME/.zsh"
EDITOR='subl -w'
PATH=$HOME/bin:/usr/local/share/npm/bin:$PATH

load_all_files_in() {
  if [ -d "$BASE/$1" ]; then
    for file in "$BASE/$1"/*.zsh; do
      source "$file"
    done
  fi
}

load_all_files_in before
load_all_files_in ""

source ~/.zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# zsh-syntax-highlighting must be sourced after all custom widgets have been
# created (i.e., after all zle -N calls and after running compinit), because it
# has to know about them to highlight them.
#
# However, zsh-syntax-highlighting also (somehow, because the source doesn't
# appear to do it) unsets the `print_exit_value` ZSH option, so re-source the
# options here so it sticks.
source ~/.zsh/options.zsh

export PATH="/usr/local/sbin:$PATH"

alias test='bin/rake test:system'
alias testfile='bin/rake test'
alias show_pids='lsof -wni tcp:3000'
alias kill_pid='kill -9 '
alias upstream='git pull upstream master --rebase'
alias h2o='cd ~/lil/h2o'
alias refresh='bundle install && yarn install && bundle exec rake db:migrate && npm install'
alias -g poop=pop
alias projects='cd ~/projects'
alias master='git stash && git checkout master'
alias rollback='bundle exec rake db:rollback'
alias migrate='bundle exec rake db:migrate'
alias rake='bundle exec rake'
alias precompile='bundle exec rake assets:precompile'
alias staging=''
alias prod=''
