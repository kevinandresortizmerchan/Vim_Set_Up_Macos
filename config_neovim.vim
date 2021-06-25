set number
set rnu
let g:mapleader = " "
set mouse=a
set nowrap
set undofile
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
set cursorline
set colorcolumn=120
set autoindent
set splitbelow
set splitright
set noshowmode
set encoding=utf-8
call plug#begin('~/.local/share/nvim/plugged')
Plug 'dracula/vim'
Plug 'mhartington/oceanic-next'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'neoclide/coc.nvim',{'branch':'release'}
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'sheerun/vim-polyglot'
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'
call plug#end()
syntax on
syntax enable
colorscheme OceanicNext
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
nnoremap <silent> <C-v> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd bufenter * if &buftype == 'terminal' | :startinsert | endif
tnoremap <Esc> <C-\><C-t>
function! OpenTerminal()
	split term://zsh
	resize 10
endfunction
nnoremap <C-t> :call OpenTerminal()<CR>
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>, :ls<CR>
nnoremap <C-n> :new<cr>
nnoremap <C-c> :bd<cr>
nnoremap <C-f> :bn<cr>
nnoremap <C-b> :bp<cr>
nnoremap <leader>l :b#<cr>
nnoremap <leader>bu :Buffers<CR>
nnoremap <C-a> ggVG<cr>
nnoremap <leader>1 :b1<cr>
nnoremap <leader>2 :b2<cr>
nnoremap <leader>3 :b3<cr>
nnoremap <leader>4 :b4<cr>
nnoremap <leader>v :vnew<cr>
nnoremap <leader>h :snew<cr>
nnoremap <leader>m :bm<cr>
nnoremap <leader>bn :sbn<cr>
nnoremap <leader>bp :sbp<cr>
nnoremap <leader>s :w<cr>
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {'ctrl-t': 'tab split','ctrl-s': 'split','ctrl-v': 'vsplit'}
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='oceanicnext'
let g:airline#extensions#tabline#fnamemod = ':t'
inoremap <silent><expr><C-space> coc#refresh()<CR>
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#hunks#enabled=1
let g:bufferline_echo = 0
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

let g:NERDTreeGitStatusUseNerdFonts = 1
nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
nnoremap <leader>dt :call GotoWindow(g:vimspector_session_windows.tagpage)<CR>
nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<CR>
nnoremap <leader>dr :call vimspector#Reset()<CR>
nnoremap <leader>dcb :call vimspector#CleanLineBreakpoint()<CR>
nmap <leader>di <Plug>VimspectorStepInto
nmap <leader>do <Plug>VimspectorStepOver
nmap <leader>de <Plug>VimspectorStepOut
nmap <leader>d, <Plug>VimspectorRestart
nnoremap <leader>d<space> :call vimspector#Continue()<CR>

nmap <leader>rc <Plug>VimspectorRunToCursor
nmap <leader>tb <Plug>VimspectorToggleBreakpoint
nmap <leader>tcb <Plug>VimspectorToggleConditionalBreakpoint


