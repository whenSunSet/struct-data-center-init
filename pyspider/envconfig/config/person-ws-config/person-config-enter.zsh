echo "\n"
echo ">>>>加载[个人配置]:ssh、gitconfig、vscode local plugin"


if [ -d "$WHENSUNSET_PERSON_CONFIG/.ssh" ];then

if [ -d "/root/.ssh" ];then
echo ">>>>>>.ssh 配置文件夹存在，删除它"
rm -rf /root/.ssh
fi

echo ">>>>>>.自定义 .ssh 配置文件夹 $WHENSUNSET_PERSON_CONFIG/.ssh 存在，进行链接"
ln -s $WHENSUNSET_PERSON_CONFIG/.ssh /root
fi

if [ -f "$WHENSUNSET_PERSON_CONFIG/.gitconfig" ];then

if [ -f "/root/.gitconfig" ];then
echo ">>>>>>..gitconfig 配置文件存在，删除它"
rm -rf /root/.gitconfig
fi

echo ">>>>>>.自定义 .gitconfig 配置文件夹 $WHENSUNSET_PERSON_CONFIG/.gitconfig 存在，进行链接"
ln -s $WHENSUNSET_PERSON_CONFIG/.gitconfig /root
fi

echo ">>>>[个人配置]:ssh、gitconfig、vscode local plugin 加载完成"
echo "\n"