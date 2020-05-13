" general settings
   set number relativenumber
	" to remove the vertical separator between panes
	hi vertSplit cterm=none
	" setting leader key
	let mapleader = ","
	" turn autoindent on
	set autoindent
	" tabwidth = 3 
	set ts=3 sw=3 sts=3 et

" - For Neovim: stdpath('data') . '/plugged'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
" beautify
   " theme 
   Plug 'drewtempelmeyer/palenight.vim'
   Plug 'ayu-theme/ayu-vim'
	Plug 'morhetz/gruvbox'
	Plug 'arcticicestudio/nord-vim'
	Plug 'rakr/vim-one'
	
   " status tabline
   Plug 'bling/vim-airline'

" tools 
   " git - fugitive
   Plug 'tpope/vim-fugitive'
   " nerdtree - file viewer
   Plug 'scrooloose/nerdtree'

" for programming languages 
   " surround delimiter editor
   Plug 'tpope/vim-surround'
   " auto pair 
   Plug 'jiangmiao/auto-pairs'
   " commenter
   Plug 'preservim/nerdcommenter'

" for Golang
	" debug, syntax highlighting, debug
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
   let g:go_version_warning = 0

Plug 'easymotion/vim-easymotion'

"Initialize plugin system
call plug#end()

" theme
set termguicolors
set background=dark
" for comments
let g:one_allow_italics = 1

" colorscheme palenight
" colorscheme ayu
colorscheme gruvbox
" colorscheme nord
" colorscheme one 


" airline settings
	let g:airline_theme = 'ayu'
	let g:airline_left_sep = ''
	let g:airline_left_alt_sep = ''
	let g:airline_right_sep = ''
	let g:airline_right_alt_sep = ''
   " status line
	let g:airline_section_a = airline#section#create(['mode'])
	let g:airline_section_b = airline#section#create(['%f','hunks','branch'])
	let g:airline_section_c = airline#section#create([''])
	let g:airline_section_y = airline#section#create([]) 
	let g:airline_section_z = airline#section#create(['linenr',':%3v']) 
   let g:airline_section_error = airline#section#create([])
   let g:airline_section_warning = airline#section#create([])
   " tab line
	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#formatter = 'unique_tail'
   let g:airline#extensions#tabline#show_close_button = 0
   let g:airline#extensions#tabline#tabs_label = ''
   let g:airline#extensions#tabline#buffers_label = ''
   let g:airline#extensions#tabline#show_tab_nr = 0
   let g:airline#extensions#tabline#left_sep = ''
   let g:airline#extensions#tabline#left_alt_sep = ''

" Nerdtree config
   let g:NERDTreeWinSize=20
   let g:NERDTreeMinimalUI=1
   let g:NERDTreeDirArrows=1
   let g:NERDTreeHighlightCursorline=1
   

" Key mappings
	" for Nerd tree
	nmap <F2> : NERDTreeToggle<CR>
   " terminal
      " for opening terminal in split pane
      nmap <C-m> :5sp \| te<CR>
      " terminal escape button
      tnoremap <Esc> <C-\><C-n>
      " autocmd
      autocmd TermOpen * exec "normal i"

   " pane moving shortcuts 
	noremap <C-J> <C-W><C-J>
	noremap <C-K> <C-W><C-K>
	noremap <C-L> <C-W><C-L>
	noremap <C-H> <C-W><C-H>
   " creating split pane
   noremap <C-V> <C-W><C-v>
   noremap <C-S> <C-W><C-s>
   "save and quit
   noremap <c-A> :w<CR>
   noremap <C-Q> :q<CR>

   set splitbelow
