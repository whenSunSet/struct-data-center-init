echo "加载[配置入口]"

if [ -f "/root/load_profile" ];then
echo ">>非首次加载"
source $WHENSUNSET_ALIAS_CONFIG/alias-enter.zsh 
echo "\n"
else
echo ">>首次加载"
source $WHENSUNSET_ALIAS_CONFIG/alias-enter.zsh 
source $WHENSUNSET_VSCODE_CONFIG/vs-enter.zsh
source $WHENSUNSET_ZSH_CONFIG/zsh-enter.zsh
source $WHENSUNSET_VIM_CONFIG/vim-enter.zsh

if [ -f "$WHENSUNSET_PERSON_CONFIG/person-config-enter.zsh" ];then
source $WHENSUNSET_PERSON_CONFIG/person-config-enter.zsh
fi

touch /root/load_profile
fi
echo "[配置入口]加载完成"