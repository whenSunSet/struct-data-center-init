echo "\n"
echo ">>>>加载[zsh配置]"

if [ -f "$WHENSUNSET_ZSH_CONFIG/.p10k.zsh" ];then
echo ">>>>>>.p10k.zsh文件存在"

if [ -f "/root/.p10k.zsh" ];then
rm /root/.p10k.zsh
fi

ln -s $WHENSUNSET_ZSH_CONFIG/.p10k.zsh /root/.p10k.zsh
else
echo ">>>>>>.p10k.zsh 文件不存在"
fi

if [ -f "$WHENSUNSET_ZSH_DATA/.zsh_history" ];then
echo ">>>>>>.zsh_history文件存在"

if [ -f "/root/.zsh_history" ];then
rm /root/.zsh_history
fi

ln -s $WHENSUNSET_ZSH_DATA/.zsh_history /root/.zsh_history
else
echo ">>>>>>..zsh_history 文件不存在"
fi

echo ">>>>[zsh配置]加载完成"