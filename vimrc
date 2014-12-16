syntax enable
set nocompatible               " be iMproved
set expandtab
set tabstop=2
set shiftwidth=2
set encoding=utf-8
set paste

filetype off                   " required!

map <Esc>[B <Down>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

 " let Vundle manage Vundle
 " required! 
 Plugin 'gmarik/vundle'

 " My Plugins here:
 "
 " original repos on github
 Plugin 'tpope/vim-fugitive'
 Plugin 'Lokaltog/vim-easymotion'
 Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
 Plugin 'tpope/vim-rails.git'
 " vim-scripts repos
 Plugin 'L9'
 Plugin 'FuzzyFinder'
 Plugin 'minibufexplorerpp'
 Plugin 'Syntastic'
 Plugin 'Valloric/YouCompleteMe'
 Plugin 'Solarized'
 " non github repos
 Plugin 'git://git.wincent.com/command-t.git'
 Plugin 'git://github.com/scrooloose/nerdtree.git'
 Plugin 'maksimr/vim-jsbeautify'
 Plugin 'einars/js-beautify'
 "Plugin 'tern_for_vim'
 " ...

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on     " required!
 "
 " Brief help
 " :PluginList          - list configured bundles
 " :PluginInstall(!)    - install(update) bundles
 " :PluginSearch(!) foo - search(or refresh cache first) for foo
 " :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Plugin command are not allowed..
 "

"set background=dark
colorscheme wombat
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" for js 
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType javascript set omnifunc=tern#Complete
autocmd BufEnter * set completeopt-=preview
syntax on

" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
" for ejs files
au BufNewFile,BufRead *.ejs set filetype=html
