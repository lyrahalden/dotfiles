
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#opens vagrant_ruby
alias v_r='cd ~/vagrant_ruby && vagrant ssh'

#creates subl alias to open files in Sublime Text
export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH
export EDITOR='subl -w'

#sshs to Novel Idea Lightsail Instance
alias aws-ssh='ssh -i ~/aws/ni.pem ubuntu@35.163.133.163'

#opens bash profile
alias bash-open='pico ~/.bash_profile'

#refreshes the bash profile
alias bash-ref='source ~/.bash_profile'

#go to Stardew Valley Mods folder quickly
alias SVMods='cd ~/Library/Application\ Support/Steam/steamapps/common/Stardew\ Valley/Contents/MacOS/Mods'

# Unzips Stardew Valley Mod files to proper location
# must be in directory where mod zip file is located
# rename file to something with no spaces eg mv More\ Artifacts.zip More-Artifacts.zip
# $1 = source file
# Example: openmod More-Artifacts.zip

openmod() {
  unzip $1 -d ~/Library/Application\ Support/Steam/steamapps/common/Stardew\ Valley/Contents/MacOS/Mods
}

#makes a directory, then moves you into that directory
mcd () {
    mkdir -pv $1
    cd $1
}
