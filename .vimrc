"""""" 基本配置

" 显示行号
set nu
" 相对行号
set norelativenumber

" 不与Vi兼容
set nocompatible

" 语法高亮
syntax on
" 设置查找高亮
set hlsearch
" 光标所在的当前行高亮
set cursorline
" 括号匹配高亮
set showmatch

" 解决vim中文乱码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" 底部显示当前模式
set showmode
" 命令模式下，在底部显示，当前键入的指令
set noshowcmd

" 设置鼠标模式
set mouse=c

" 启用256色
set t_Co=256

" 文件类型检查
filetype indent on

" 不生成备份文件
set nobackup
" 系统崩溃时生成.swp文件
set swapfile
" 保存退出后生成undo文件
set undofile
" 设置操作历史文件的保存位置
set undodir=~/.vim/undo// 

" 自动缩进
set autoindent
" 设置tab为4格
set tabstop=4
set softtabstop=4
set shiftwidth=4
" 输入tab时自动将其转化为空格
set expandtab

" 粘贴文本时打开
set nopaste

" 一行多少个字符
set textwidth=100
" 自动折行显示
set wrap

" 水平滚动时，光标距离行首或行尾的位置
set sidescrolloff=0
" 垂直滚动时，光标距离顶部或者底部的位置
set scrolloff=5

set backspace=2

" 显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler

" 搜索时自动跳到匹配结果
set incsearch
" 搜索时是否忽略大小写
set noignorecase

" 搜索时自动跳到匹配结果
set incsearch
" 搜索时是否忽略大小写
set noignorecase

" 显示所有补全指令
set wildmenu
set wildmode=longest:list,full

" 设置配色
colorscheme desert

" 映射
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap {<CR> {<CR>}<ESC>O
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
":inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction

filetype plugin indent on 

