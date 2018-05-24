set number  "to display line numbers
"uncomment the next two lines to set cursorline and cursorcolumn
"set cursorline
"set cursorcolumn
"You can change colorscheme by selecting any value given  in
"/usr/share/vim/vim74/colors
colorscheme molokai
"set formatoptions=l

"line break on 500 characters
"set lbr
"set tc=500

"set noswapfile

"next line is for spelling check;use <F6>
map <special> <F6> :setlocal spell! spelllang=en_US<CR>    

"use ctrl+l to directly jump to <++> 
inoremap <special>  <Esc>/<++><Enter>"0c4l 

"formatting
set expandtab
set tabstop=4 "setting tab as four spaces
set softtabstop=4
set shiftwidth=4

"the next line  is used to map jj as an alternative to escape key
inoremap <special> jj <ESC>
"useful for handling the permission denied error by using :W
command W w !sudo dd of=% 

"uncomment the following three lines to set a highlighted column line
"set noexpandtab
"set colorcolumn=150
"highlight ColorColumn ctermbg=blue

"html tags shortcuts
autocmd Filetype html inoremap ;i <em></em><Space><++><Esc>FeT>i
autocmd Filetype html inoremap ;b <b></b><Space><++><Esc>FbT>i
autocmd Filetype html inoremap ;p <p><Enter></p><Space><++><Esc>1kA<Enter>
autocmd Filetype html inoremap ;h <html> <Enter> <head> <Enter></head><Enter> <body> <Enter> </body> <Enter></html><Esc>2kA
autocmd Filetype html inoremap ;d <div></div><Space><Esc>FvT>i
autocmd Filetype html inoremap ;s <span></span><Space><++><Esc>FnT>i
autocmd Filetype html inoremap ;a <a href=""><++></a><Space><++><Esc>F"i

"for compiling c++ program  directly in vim using <F9> in normal mode 
set autowrite
nnoremap <special> <F9> :!g++ -std=c++11 % -Wall -g -o %.out && ./%.out<CR>

"cpp shortcuts
autocmd Filetype cpp inoremap ;h #include<iostream><Enter> using namespace std; <Enter> int main() <Enter> { <Enter>}<Esc>1kA<Enter> 
autocmd Filetype cpp inoremap ;f int (<++>) <Enter> { <Enter><++><Enter>}<Enter><++><Esc>4kf(i

"for compiling python program inside  vim using <F9>
nnoremap <special> <F9> :exec '!python' shellescape(@%, 1)<cr>


let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim
" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark
" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
