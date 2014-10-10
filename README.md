vim_thes
=======================

> 安装环境需要：
- vim7.3+
- git

> 关于：
- 最后更新时间：2014.10.9

### vim_thes安装方法

    curl http://sh7ne.sinaapp.com/tools/install.sh -L > thesVimBoot.sh && sh thesVimBoot.sh

这个过程会帮你备份好你之前的vim配置和插件，然后安装好插件

![我的vim界面预览](https://raw.githubusercontent.com/sh7ning/img/master/vim.png "我的vim界面预览")

演示

![开始使用vim](https://raw.githubusercontent.com/sh7ning/img/master/vim_run.gif "开始使用vim")

### 快捷键相关

    修改了<leader>为逗号(,)
    <Leader>n :切换nerdtree
    <leader>tt :打开Tagbar
    <F4> :开/关 复制粘贴模式

以下是默认未开启的快捷键

    <F3> : 检测php语法是否正确，如果语法检测插件不可用，可以使用这个
    <F5> : 去掉^M符号
    <F6> : 去掉行尾空格
    <F7> : svn更新当前目录
    <F8> : svn提交当前目录
    <F9> : svn提交当前文件

### 插件相关
#### [vundle](https://github.com/gmarik/vundle)

    插件管理，用于管理vim插件，方便安装，更新，卸载vim插件

#### [nerdtree](https://github.com/scrooloose/nerdtree)

    目录导航，用于文件目录导航，方便打开相关文件

#### [vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs)

    增强nerdtree

#### [vim-airline](https://github.com/bling/vim-airline)

    状态栏增加

#### [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)

    vim主题

#### [syntastic](https://github.com/scrooloose/syntastic)

    语法检测，支持多种语言

#### [tagbar](https://github.com/majutsushi/tagbar)

    函数跳转

    依赖ctags（如果没安装请先安装），用于函数跳转

#### [tComment](https://github.com/vim-scripts/tComment)

    快速注释

#### 自动补全和自定义代码片段插件

    [neocomplcache](https://github.com/Shougo/neocomplcache)  [neosnippet](https://github.com/Shougo/neosnippet)  [neosnippet-snippets](https://github.com/Shougo/neosnippet-snippets) [vim-snippets](https://github.com/honza/vim-snippets)

#### [vim-markdown](https://github.com/plasticboy/vim-markdown)

    markdown语法高亮等

### 学习vim的基本用法文章整理
> [简明 Vim 练级攻略](http://coolshell.cn/articles/5426.html)
[无插件Vim编程技巧](http://coolshell.cn/articles/11312.html)
[Vim的分屏功能](http://coolshell.cn/articles/1679.html)
[Vim命令速查卡](http://coolshell.cn/articles/150.html)
