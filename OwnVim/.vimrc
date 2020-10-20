"""""""""""""""""""""""""""""
"" Taglist (ctags)

""""""""""""""""""""""""""""""
let Tlist_GainFocus_On_ToggleOpen= 0
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 0  		"在右侧窗口中显示taglist窗口
let Tlist_File_Fold_Auto_Close = 1 		"关闭其他文件的tags
let Tlist_Sort_Type = "name"			"按照名次排序

"""""""""""""""""""""""""""""""""""""iiii" 
" 语法着色与高亮设置 
syntax on
"""""""""""""""""""""""""""""""""""""""
"colorscheme
colorscheme 256-jungle
""""""""""""""""""""""""""""""""""""""" 
" "设置高亮搜索 
set hlsearch 
set incsearch
set ignorecase
" 
""""""""""""""""""""""""""""""""""""""" 
" " 文件设置 
""""""""""""""""""""""""""""""""""""""" 
" "检测文件的类型 
filetype on
filetype indent on 
"
""""""""""""""""""""""""""""""""""""""" 
" " 鼠标设置 
""""""""""""""""""""""""""""""""""""""" 
" "鼠标支持 
if has('mouse') 
"set mouse=a 
endif 
" 
" "使鼠标用起来象微软 Windows,似乎正好解决 连续多行缩进问题、退格问题 
behave mswin 
" 
""""""""""""""""""""""""""""""""""""""
""显示匹配

"""""""""""""""""""""""""""""""""""""
set showmatch
""""""""""""""""""""""""""""""""""""""" 
" " 编辑器设置 
""""""""""""""""""""""""""""""""""""""" 
" 
"显示行号 
set number 
" 
"Tab 宽度 
set ts=4 
set softtabstop=4
set shiftwidth=4
set expandtab
" 设置自动缩进
set autoindent
"show tabs
set list
set listchars=tab:>-,trail:-
"
set sw=4
" "C/C++ 风格的自动缩进 
set cindent 
" "设定 C/C++ 风格自动缩进的选项 
set cino=:0g0t0(sus 
" 
" "在编辑过程中，在右下角显示光标位置的状态行 
set ruler 
" 
" "显示匹配括号 
set showmatch 
" 
" 
" "代码折叠, 命令 za 
set foldmethod=syntax 
set foldlevel=100  "启动vim时不要自动折叠代码 
"
""""""""""""""""""""""""""""""""""""""" 
" "have Vim jump to the last position when reopen file
""""""""""""""""""""""""""""""""""""""" 
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
""""""""""""""""""""""""""""""""""""""" 
" " 快捷键设置 
""""""""""""""""""""""""""""""""""""""" 
" "函数和变量列表 
map ,tt :TlistToggle<CR> 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"cscope setting

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
set csprg=/usr/bin/cscope
set csto=1
set cst
set nocsverb
" add any database in current directory
if filereadable("cscope.out")
cs add cscope.out
endif
set csverb
endif
""""""""""""cscope cmd""""""""""""""""""
nmap ,ts :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap ,tg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap ,tc :cs find c <C-R>=expand("<cword>")<CR><CR>
"nmap ,tt :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap ,te :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap ,tf :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap ,ti :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap ,td :cs find d <C-R>=expand("<cword>")<CR><CR>
"""""""""""""git cmd""""""""""""""""""""
nmap ,ga :!git add % <CR><CR>
nmap ,gl :!git gl % <CR>
nmap ,gd :!git diff % <CR>
nmap ,gb :!git blame % <CR>
"""""""""""""grep cmd"""""""""""""""""""
nmap ,ca :!allgrep <C-R>=expand("<cword>")<CR><CR>
nmap ,cc :!ccgrep <C-R>=expand("<cword>")<CR><CR>
nmap ,ch :!hgrep <C-R>=expand("<cword>")<CR><CR>
nmap ,cj :!jgrep <C-R>=expand("<cword>")<CR><CR>
nmap ,cr :!resgrep <C-R>=expand("<cword>")<CR><CR>
nmap ,cs :!shgrep <C-R>=expand("<cword>")<CR><CR>
nmap ,cm :!mkgrep <C-R>=expand("<cword>")<CR><CR>
""""""""""""""""""""""""""""""""""""""""
nmap ,bn :bn<CR>
nmap ,bp :bp<CR>
""""""""""""""""""""""""""""""""""""""""
nmap ,ff :!find . -name <C-R>=expand("<cword>")<CR>
"mark 插件
""""""""""""""""""""""""""""""""""""""""
let mapleader=","
"显示文件名"
set laststatus=2
