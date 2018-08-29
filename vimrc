
set nocompatible
filetype off
set rtp+=/home/niku/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" nice tree view
Plugin 'scrooloose/nerdtree'

" code completion plugin
Plugin 'Valloric/YouCompleteMe'

" fancy status line
Plugin 'powerline/powerline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerline/powerline-fonts'

" nice file search
Plugin 'junegunn/fzf'

call vundle#end()
filetype plugin indent on

" read bar after charackter 80
let &colorcolumn=join(range(81,81),",")

" change line number section of the airline theme
let g:airline_section_z = ' %p%%  𝌆   %l/%L : %c'

" setting airline theme (but default theme is nice)
" let g:airline_theme='tomorrow'

" autocompletion invoke
let g:ycm_key_invoke_completion = '<C-Space>'

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

" case insensitive search
set ignorecase

" set sourcecode depending folding
" set foldmethod=syntax

" enable syntax highlighting
syntax enable

" set tab to 4 spaces
set tabstop=2

" use spaces instead of tabs
set expandtab

" auto indent with newline
" set autoindent
" set cindent

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

map <C-a> :FZF<CR>

" to autoreload filechanges
" set autoread

map <C-a> :FZF<CR>

try
   colorscheme desert
catch
endtry
set background=dark

"set guifont=/home/niku/.local/share/fonts/Source\ Code\ Pro\ for\ Powerline.otf 
set guifont=/home/niku/.local/share/fonts/Space\ Mono\ for\ Powerline.ttf 

set tabstop=2

" fix indent's
set ts=2 sw=2 sts=2 sr noet ai si
set expandtab

