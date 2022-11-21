#!/bin/sh

set_tools()
{
	sudo apt install vim git exuberant-ctags cscope pip
	pip install googletrans
}

set_bundle()
{
	rm -rf ~/.vim/
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle/
}

set_vimconfig()
{
	cp dotvimrc ~/.vimrc
}

set_ycm()
{
	cd ~/.vim/bundle/YouCompleteMe
	/usr/bin/python3 install.py --clang-completer
	cp ~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py ~/.vim/
}

start()
{
	set_tools
	set_vimconfig
	set_bundle
}

#start 执行，安装了vundle插件管理工具；
#接着打开vim，输入 :PluginInstall进行安装所有插件,速度较慢
start

#在插件安装完成后，注释start,取消注释set_ycm,单独执行set_ycm,配置ycm
#set_ycm

