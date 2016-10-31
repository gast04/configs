
" setup selfmade status line
set statusline=
set statusline+=%7*\[%n]                                  "buffernr
set statusline+=%1*\ %<%F\                                "File+path
set statusline+=%2*\ %y\                                  "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..) 
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                            "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.

" activate selfmade status line
set laststatus=2

" set utf8 as standard encoding
set encoding=utf8
       
" show line numbers
set number

" Always show current position
set ruler

" enable syntax highlighting
syntax enable

" set tab to 4 spaces
set tabstop=2

" use spaces instead of tabs
set expandtab

" set line break (during writing, only words)
set lbr
set tw=100

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
   set t_Co=256
endif









try 
   colorscheme desert
catch
endtry

set background=dark




