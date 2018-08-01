
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" nice tree view
Plugin 'scrooloose/nerdtree'

" code completion plugin
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

let &colorcolumn=join(range(81,81),",")

"Plugin 'Valloric/YouCompleteMe'
"let g:ycm_global_ycm_extra_conf = 0
"let g:ycm_key_invoke_completion = '<C-b>'

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" setup selfmade status line
"set statusline=
"set statusline+=%7*\[%n]                                  "buffernr
"set statusline+=%1*\ %<%F\                                "File+path
"set statusline+=%2*\ %y\                                  "FileType
"set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
"set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
"set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..)
"set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
"set statusline+=%9*\ col:%03c\                            "Colnr
"set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.

" activate selfmade status line
set laststatus=2

" set utf8 as standard encoding
set encoding=utf8

" show line numbers
set number

" Always show current position
set ruler

" set sourcecode depending folding
" set foldmethod=syntax

" enable syntax highlighting
syntax enable

" set tab to 4 spaces
set tabstop=2

" use spaces instead of tabs
set expandtab

" auto indent with newline
set autoindent

" set line break (during writing, only words)
" set lbr
" set tw=100

" cursor move between lines, from left to right into
" previous line
set whichwrap+=<,>,h,l,[,]

" Enable 256 colors palette in Gnome Terminal
"if $COLORTERM == 'gnome-terminal'
"   set t_Co=256
"endif

map <C-K> <C-Y>
map <C-J> <C-E>

" toggle NERDTree on/off
map <C-n> :NERDTreeToggle<CR>
" toggle NERDTree focus
map <C-m> :NERDTreeFocus<CR>

" to autoreload filechanges
" set autoread

try
   colorscheme desert
catch
endtry

set background=dark

"set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set rtp+=/usr/lib/python3.6/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

"set guifont=/home/niku/.local/share/fonts/Source\ Code\ Pro\ for\ Powerline.otf 
set guifont=/home/niku/.local/share/fonts/Space\ Mono\ for\ Powerline.ttf 


