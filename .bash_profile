#from brew install bash-completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# common git commands
alias gs='git status'
alias gpo='git push origin master'
alias gpu='git pull upstream master'

#prompt configuration
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
alias lscolor='ls -lah -G'

#sets default ruby for chruby
#. /usr/local/share/chruby/chruby.sh

#opens vagrant_ruby
alias v_r='cd ~/vagrant_ruby && vagrant ssh'

#creates and activates env
alias makeenv='virtualenv env && source env/bin/activate'

#activates env
alias envup='source env/bin/activate'

#deactivates env
alias envdown='deactivate'

#creates subl alias to open files in Sublime Text
export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH
export EDITOR='subl -w'

#sshs to Novel Idea Lightsail Instance
alias aws-ssh='ssh -i ~/aws/ni.pem ubuntu@35.163.133.163'

#opens bash profile
alias bash-open='pico ~/.bash_profile'

#refreshes the bash profile
alias bash-ref='source ~/.bash_profile'

#go to Downloads
alias dn='cd ~/Downloads'

#go to Stardew Valley config files  quickly
alias SVE='cd ~/.config/StardewValley'

#go to Stardew Valley Mods folder quickly
alias SVM='cd ~/Library/Application\ Support/Steam/steamapps/common/Stardew\ Valley/Contents/MacOS/Mods'

#go to Stardew Valley Content folder quickly
alias SVC='cd ~/Library/Application\ Support/Steam/steamapps/common/Stardew\ Valley/Contents/Resources/Content'

#go to Stardew Valley Dialogue folder quickly
alias SVD='cd ~/Library/Application\ Support/Steam/steamapps/common/Stardew\ Valley/Contents/Resources/Content/Characters/Dialogue'

# Unzips Stardew Valley Mod files to proper location
# must be in directory where mod zip file is located
# rename file to something with no spaces eg mv More\ Artifacts.zip More-Artifacts.zip
# $1 = source file
# Example: mod More-Artifacts.zip

mod() {
  unzip $1 -d ~/Library/Application\ Support/Steam/steamapps/common/Stardew\ Valley/Contents/MacOS/Mods
}

dmod() {
  mv -i $1 ~/Library/Application\ Support/Steam/steamapps/common/Stardew\ Valley/Contents/Resources/Content/Characters/Dialogue
}

cmod() {
  mv -i $1 ~/Library/Application\ Support/Steam/steamapps/common/Stardew\ Valley/Contents/Resources/Content 
}

crmod() {
  mv -i $1 ~/Library/Application\ Support/Steam/steamapps/common/Stardew\ Valley/Contents/Resources/Content/Characters
}

mmod() {
  mv -i $1 ~/Library/Application\ Support/Steam/steamapps/common/Stardew\ Valley/Contents/Resources/Content/Maps
}

amod() {
  mv -i $1 ~/Library/Application\ Support/Steam/steamapps/common/Stardew\ Valley/Contents/Resources/Content/Animals
}

pmod() {
  mv -i $1 ~/Library/Application\ Support/Steam/steamapps/common/Stardew\ Valley/Contents/Resources/Content/Portraits
}

#makes a directory, then moves you into that directory
mcd () {
    mkdir -pv $1
    cd $1
}

#this is the path to the sqlite that comes with python3
#export PATH="/usr/local/opt/sqlite/bin:$PATH"

#enables chruby source script to run
source ~/.bashrc
chruby ruby-2.3.5
