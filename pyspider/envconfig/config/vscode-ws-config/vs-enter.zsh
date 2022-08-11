echo "\n"
echo ">>>>加载[vscode配置]"

if [ -f "$WHENSUNSET_VSCODE_CONFIG/keybindings.json" ];then
echo ">>>>>>keybindings文件存在"

if [ -f "/root/.local/share/code-server/User/keybindings.json" ];then
rm /root/.local/share/code-server/User/keybindings.json
fi

ln -s $WHENSUNSET_VSCODE_CONFIG/keybindings.json /root/.local/share/code-server/User/keybindings.json
else
echo ">>>>>>keybindings文件不存在"
fi

if [ -f "$WHENSUNSET_VSCODE_CONFIG/settings.json" ];then
echo ">>>>>>settings文件存在"

if [ -f "/root/.local/share/code-server/User/settings.json" ];then
rm /root/.local/share/code-server/User/settings.json
fi

ln -s $WHENSUNSET_VSCODE_CONFIG/settings.json /root/.local/share/code-server/User/settings.json
else
echo ">>>>>>settings文件不存在"
fi

nohup pyspider &

echo ">>>>[vscode配置]加载完成"