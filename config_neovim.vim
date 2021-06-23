set number
set mouse=a
set nolist
set tabstop=4
set clipboard=unnamed
set sw=4
set numberwidth=1
set nowrap
set noswapfile
set nobackup
set incsearch
set ignorecase
set showmatch
set hlsearch
set showcmd
set smartcase
set undolevels=1000
set autoindent
set hidden
set cmdheight=2
set updatetime=300
set autowrite
set splitbelow
set splitright
set laststatus=2
set autoread
filetype indent on
filetype plugin indent on
syntax on
call plug#begin('~/.local/share/nvim/plugged')
Plug 'dracula/vim'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'neoclide/coc.nvim',{'branch':'release'}
call plug#end()
syntax enable 
colorscheme dracula
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <silent> <C-v> :NERDTreeToggle<CR>
tnoremap <Esc> <C-\><C-n>
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
function! OpenTerminal()
	split term://zsh
	resize 10
endfunction
nnoremap <C-n> :call OpenTerminal()<CR>
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-t> :tabnew<cr>
nnoremap <C-a> :tabnext<cr>
nnoremap <C-r> :vsplit :tabnew<cr>
nnoremap <C-B> :tabprevious<cr>
nnoremap <C-c> :tabclose<cr>
nnoremap <C-O> :tabonly<cr>
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {'ctrl-t': 'tab split','ctrl-s': 'split','ctrl-v': 'vsplit'}
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='papercolor'
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type = 2
let g:airline#extensions#tabline#tabs_label = 't'
let g:airline#extensions#tabline#buffers_label = 'b'
let g:airline#extensions#tabline#show_tabs = 1
let g:airline_detect_modified=1
inoremap <silent><expr><C-space> coc#refresh()<CR>
xmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)t
