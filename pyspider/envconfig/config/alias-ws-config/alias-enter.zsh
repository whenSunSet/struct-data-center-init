echo "\n"
echo ">>>>加载[alias]"

alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

alias delff='delff(){  find . -maxdepth 1 -name $1 -ls -exec rm -rf {} \;}; delff'
alias delff_re='delff_re(){  find . -name $1 -ls -exec rm -rf {} \;}; delff_re'
alias ff_re='ff_re(){  find . -name $1 -ls}; ff_re'
alias ff='ff(){  find . -maxdepth 1 -name $1 -ls}; ff'
alias show_dir_space='show_dir_space(){du -h --max-depth=1 $1}; show_dir_space'
alias vi='vim'

if [ -f "$WHENSUNSET_ZSH_DATA/.zsh_history" ];then
echo ">>>>>>.zsh_history文件存在"

if [ -f "/root/.zsh_history" ];then
rm /root/.zsh_history
fi

ln -s $WHENSUNSET_ZSH_DATA/.zsh_history /root/.zsh_history
else
echo ">>>>>>..zsh_history 文件不存在"
fi

export LESSCHARSET=utf-8
echo ">>>>[alias]加载完成"