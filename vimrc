syntax on

" Vundle Section Start
set nocompatible              
filetype off                  
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" 常用命令
" :PluginList       - 查看已经安装的插件
" :PluginInstall    - 安装插件
" :PluginUpdate     - 更新插件
" :PluginSearch     - 搜索插件，例如 :PluginSearch xml就能搜到xml相关的插件
" :PluginClean      - 删除插件，把安装插件对应行删除，然后执行这个命令即可

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'Chiel92/vim-autoformat'
Plugin 'https://github.com/bling/vim-airline'


" 安装插件写在这之前
call vundle#end()            " required
filetype plugin on    " required
" Vundle Section End


" vim常用设置
imap { {}iV
set clipboard+=unnamed			"共享剪贴板
set nu
set smartindent
set tabstop=4 "设置Tab长度为4空格
set shiftwidth=4 "设置自动缩进长度为4空格
set autoindent
set expandtab
set showmatch "显示括号匹配
set paste "设置粘贴模式
set listchars=tab:>-,trail:- "显示空格和tab键
set laststatus=2 "总是显示状态栏
set ruler "显示光标位置
autocmd BufWritePost $MYVIMRC source $MYVIMRC "让vimrc配置立即生效

" YCM的配置
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

" NERDTree的配置
map <F2> :NERDTreeToggle<CR>
""修改树的显示图标
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
""窗口位置
let g:NERDTreeWinPos='left'
""窗口尺寸
let g:NERDTreeSize=30
""窗口是否显示行号
let g:NERDTreeShowLineNumbers=1
""不显示隐藏文件
let g:NERDTreeHidden=0
""打开vim时如果没有文件自动打开NERDTree
autocmd vimenter * if !argc()|NERDTree|endif
""当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
""打开vim时自动打开NERDTree
autocmd vimenter * NERDTree
""设置nerdtree的书签
let g:NERDTreeShowBookmarks=1

""vim-autoformat 一键格式化
nnoremap <F6> :Autoformat<CR>
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0