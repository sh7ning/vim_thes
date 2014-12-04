" Description {
    " sh7ne的vim配置
    " https://github.com/sh7ning/vim_thes
    " 新建时间：2014-6-6
    " 最后更新时间：2014-10-9
" }

" Environment {

    " Basics {
        "格式化高亮
        syntax on
        "禁用VI兼容模式
        set nocompatible
    " }

    " Use bundles config {
        if filereadable(expand("~/.vimrc.bundles"))
            source ~/.vimrc.bundles
        endif
    " }

    " General {
        "公共配置
        "显示行号
        set nu
        "设置新文件的编码为 UTF-8
        set encoding=utf-8
        "Vim 在与屏幕/键盘交互时使用的编码(取决于实际的终端的设定)
        set termencoding=utf-8
        "Vim 打开文件时的尝试使用的编码
        set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
        " Use Unix as the standard file type
        set ffs=unix,dos,mac
        " 鼠标暂不启用
        set mouse-=a

        "自动对齐 autoindent
        set ai
        "依据上面的对齐格式
        set smartindent
        set cindent
        "自动换行
        set wrap
        "set nowrap 取消换行
        "不在单词中间断行
        set lbr
        set tw=0
        " smart backspace
        set backspace=start,indent,eol
        " No extra spaces between rows
        set linespace=0

        " tab相关变更
        " 设置Tab键的宽度        [等同的空格个数]
        set tabstop=4
        " 每一次缩进对应的空格数
        set shiftwidth=4
        " 按退格键时可以一次删掉 4 个空格
        set softtabstop=4
        " insert tabs on the start of a line according to shiftwidth, not tabstop 按退格键时可以一次删掉 4 个空格
        set smarttab
        " 将Tab自动转化成空格    [需要输入真正的Tab键时，使用 Ctrl+V + Tab]
        set expandtab
        " 缩进时，取整 use multiple of shiftwidth when indenting with '<' and '>'
        set shiftround

        " 代码折叠
        set foldenable
        " 折叠方法
        " manual    手工折叠
        " indent    使用缩进表示折叠
        " expr      使用表达式定义折叠
        " syntax    使用语法定义折叠
        " diff      对没有更改的文本进行折叠
        " marker    使用标记进行折叠, 默认标记是 {{{ 和 }}}
        set foldmethod=indent
        set foldlevel=99

        "括号配对情况,跳转并高亮一下匹配的括号
        set showmatch
        set matchtime=2

        " 在上下移动光标时，光标的上方或下方至少会保留显示的行数
        set scrolloff=7

        " history存储行数
        set history=2000
        "文件被外部修改，自动读入
        set autoread
        " 启动的时候不显示那个援助索马里儿童的提示
        "set shortmess=atI
        set shortmess+=filmnrxoOtT

        " 检索时高亮显示匹配项
        set hlsearch
        " 打开增量搜索模式,随着键入即时搜索
        set incsearch
        " 搜索时忽略大小写
        set ignorecase
        " 有一个或以上大写字母时仍大小写敏感
        set smartcase
        " For regular expressions turn magic on
        set magic

        "改变命令行的title
        set title
        " 去掉错误时提示声音
        set noerrorbells
        set novisualbell
        set t_vb=
        set tm=500

        "没有保存的缓冲区可以自动被隐藏
        set hidden
        set ttyfast

        " 取消备份
        set nobackup
        set nowb
        " 关闭交换文件
        set noswapfile

        " Setting up the directories
        if has('persistent_undo')
            " So is persistent undo ...
            set undofile
            " Maximum number of changes that can be undone
            set undolevels=1000
            " Maximum number lines to save for undo on a buffer reload
            set undoreload=10000
            set undodir=~/.vim/undo
        endif

        " 左下角显示当前vim模式
        set showmode

        if has('cmdline_info')
            set ruler
            ""在状态栏显示正在输入的命令
            set showcmd
        endif

        if has('statusline')
            set laststatus=2
            " Broken down into easily includeable segments
            set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
        endif

        "检测文件类型
        filetype on
        "" 针对不同的文件类型采用不同的缩进格式
        filetype indent on
        "允许插件
        filetype plugin on
        ""启动自动补全
        filetype plugin indent on

        "让分屏出现在右侧vsp
        set splitright
        "让分屏出现在下侧
        set splitbelow

        " 自动补全配置
        "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
        "set wildmode=list:longest,full
        "set completeopt=longest,menu
        "文件和目录名的补全中忽略符合其中任何模式的文件
        "set wildignore=*.swp,*.bak,.svn
        " 增强模式中的命令行自动完成操作
        set wildmenu

    " }

    " Theme {
        " 突出显示当前行等 高亮
        set cursorline
        "set cursorcolumn

        set background=dark
        if filereadable(expand("~/.vim/bundle/vim-colors-solarized/colors/solarized.vim"))
            let g:solarized_termcolors=256
            let g:solarized_termtrans=1
            let g:solarized_contrast="normal"
            let g:solarized_visibility="normal"
            color solarized             " Load a colorscheme
        else
            " 默认主题
            colorscheme pablo
            "colorscheme elflord
            "编辑区背景色 启用
            hi Normal guibg=#99cc99 guifg=Black
            "光标所在行背景色 启用
            hi CursorLine guibg=#2d2d2d ctermbg=236 cterm=none
            "hi CursorLine cterm=NONE ctermbg=darkred guibg=#66cc99 guifg=black ctermfg=white
            "行号背景色
            hi LineNr guibg=#003366 guifg=#99ccff ctermbg=7777 ctermfg=blue
        endif
        set t_Co=256

        " SignColumn should match background
        highlight clear SignColumn
        " Current line number row will have same background color in relative mode
        highlight clear LineNr
        " Remove highlight color from current line number
        "highlight clear CursorLineNr
    " "}

    " Map hot key and setup Plugin {
        " 修改leader键 key
        let mapleader = ','
        let g:mapleader = ','

        " Plugin
        " NerdTree {
            if isdirectory(expand("~/.vim/bundle/nerdtree"))
                let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
                let NERDTreeShowHidden=1
                let g:nerdtree_tabs_open_on_gui_startup=0
                " key
                map <Leader>n <plug>NERDTreeTabsToggle<CR>
                "map <leader>e :NERDTreeToggle<CR>
            endif
        " }
        " PIV {
            if isdirectory(expand("~/.vim/bundle/PIV"))
                let g:DisableAutoPHPFolding = 1
                let g:PIVAutoClose = 0
            endif
        " }
        " TagBar {
            if isdirectory(expand("~/.vim/bundle/tagbar/"))
                nnoremap <silent> <leader>tt :TagbarToggle<CR>
                let g:tagbar_autofocus = 1
            endif
        " }
        " neocomplcache {
            if isdirectory(expand("~/.vim/bundle/neocomplcache"))
                let g:neocomplcache_enable_at_startup = 1
            endif
        " }
        " Snippets {
        if exists('g:spf13_bundle_groups')
            if count(g:spf13_bundle_groups, 'neocomplcache') ||
                        \ count(g:spf13_bundle_groups, 'neocomplete')

                " Use honza's snippets.
                let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

                " Enable neosnippet snipmate compatibility mode
                let g:neosnippet#enable_snipmate_compatibility = 1

                " For snippet_complete marker.
                if !exists("g:spf13_no_conceal")
                    if has('conceal')
                        set conceallevel=2 concealcursor=i
                    endif
                endif

                " Enable neosnippets when using go
                let g:go_snippet_engine = "neosnippet"

                " Disable the neosnippet preview candidate window
                " When enabled, there can be too much visual noise
                " especially when splits are used.
                set completeopt-=preview
            endif
        endif
        " }
        " vim-airline {
            if isdirectory(expand("~/.vim/bundle/neocomplcache"))
                if !exists('g:airline_symbols')
                    let g:airline_symbols = {}
                endif
                let g:airline_left_sep = '>'
                let g:airline_right_sep = '<'
            endif
        " }
        " vim-markdown {
            if isdirectory(expand("~/.vim/bundle/vim-markdown"))
                let g:vim_markdown_folding_disabled=1
                let g:vim_markdown_no_default_key_mappings=1
            endif
        " }

        "粘贴时候防止格式错乱 key
        set pastetoggle=<F4>
        "php语法检测，因为安装了语法插件，所以不启用，如插件无效，可以手动开启
        "map <F3> :!php -l % <CR>
        "svn使用 {
            "更新当前目录的代码
            "map <F7> :!svn up <CR>
            "提交当前目录的svn 
            "map <F8> :!svn ci -m ""<CR>
            "提交当前文件
            "map <F9> :!svn ci -m "" % <CR>
        " }
        
        " 去掉^M
        "map <F5> :call StripTrailingBr()<CR>
        
        " 去掉行尾空格
        "map <F6> :call DeleteTrailingWS()<CR>
        "也可以设置为保存php的过程中自动进行处理 
        "autocmd BufWrite *.php :call DeleteTrailingWS()

        "设置重新载入.vimrc快捷键 key
        "map <silent> <leader>ss :source ~/.vimrc<cr>
        "设置快速编辑.vimrc快捷键 key
        "map <silent> <leader>ee :e ~/.vimrc<cr>
    " }
    " Other {
        " 定义函数AutoSetFileHead，自动插入文件头
        autocmd BufNewFile *.sh,*.php exec ":call AutoSetFileHead()"
        function! AutoSetFileHead()
            "如果文件类型为.sh文件
            if &filetype == 'sh'
                call setline(1, "\#!/bin/bash")
            endif

            "如果文件类型为php
            if &filetype == 'php'
                call setline(1, "<?php")
                "call append(0, "<?php")
                "call append(line("$"), "?>")
            endif

            normal G
            normal o
        endfunc

        " 删除行尾^M符号
        " 如果是很多行合并为一行了用 %s/\r/\r/g
        function! StripTrailingBr()  
            exec "%s/\r//g"
        endfunction

        "去掉空格
        func! DeleteTrailingWS()
            exe "normal mz"
            %s/\s\+$//ge
            exe "normal `z"
        endfunc

        " 打开文件为上次打开的位置 if this not work ,make sure .viminfo is writable for you
        if has("autocmd")
            au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
        endif
        " Always switch to the current file directory
        autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif
        "配置文件.vimrc更改后自动重新载入使设置生效
        autocmd! bufwritepost .vimrc source ~/.vimrc
    " }

" }

