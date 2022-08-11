echo "\n"
echo ">>>>加载[vim配置]"

if [ -f "$WHENSUNSET_VIM_CONFIG/.vimrc" ];then

if [ -f "/root/.vimrc" ];then
echo ">>>>>>vim配置文件存在，删除它"
rm /root/.vimrc
fi

echo ">>>>>>自定义 vim 配置文件 $WHENSUNSET_VIM_CONFIG/.vimrc，进行链接"
ln -s $WHENSUNSET_VIM_CONFIG/.vimrc /root/.vimrc
else
echo ">>>>>>.vimrc文件不存在"
fi


echo ">>>>[vim配置]加载完成"