" ---------------------------
"           Plugins
" ---------------------------

call plug#begin('~/.vim/plugged')
    Plug 'vim-airline/vim-airline'
    Plug 'mhinz/vim-startify'
    Plug 'https://github.com/pacha/vem-tabline'
    Plug 'preservim/nerdtree'
    Plug 'https://github.com/vim-python/python-syntax'
    Plug 'ryanoasis/vim-devicons'
    Plug 'https://github.com/tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'https://github.com/lilydjwg/colorizer'
    Plug 'https://github.com/jiangmiao/auto-pairs'
call plug#end()

" ---------------------------
"           Regular
" ---------------------------

set nocompatible
set fillchars+=vert:\⏽ 
filetype on
filetype plugin on
filetype indent on
syntax on
set number
set shiftwidth=4
set tabstop=4
set expandtab
set scrolloff=10
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch
set hlsearch
set history=1000
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set shm+=I

" -------------------------
"       Plugin settings
" -------------------------

nmap <F5> :NERDTreeToggle<CR>

" python syntax highlighting
let g:python_highlight_all = 1
" airline-vim
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:webdevicons_enable_airline_statusline_fileformat_symbols = 0
let g:airline#extensions#wordcount#enabled = 0


" vem-tab 
nmap <leader>h <Plug>vem_move_buffer_left-
nmap <leader>l <Plug>vem_move_buffer_right-
nmap <leader>p <Plug>vem_prev_buffer-
nmap <leader>n <Plug>vem_next_buffer-
nnoremap <leader>1 :1tabnext<CR>
nnoremap <leader>2 :2tabnext<CR>
nnoremap <leader>3 :3tabnext<CR>
nnoremap <leader>4 :4tabnext<CR>
nnoremap <leader>5 :5tabnext<CR>
nnoremap <leader>6 :6tabnext<CR>
nnoremap <leader>7 :7tabnext<CR>
nnoremap <leader>8 :8tabnext<CR>
nnoremap <leader>9 :9tabnext<CR>


" Nerdtree
let s:blue = "92c8f5"
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeHighlightCursorline = 0



" startify
let g:head = [
            \
            \ ' ██╗   ██╗██╗███╗   ███╗',
            \ ' ██║   ██║██║████╗ ████║',
            \ ' ██║   ██║██║██╔████╔██║',
            \ ' ╚██╗ ██╔╝██║██║╚██╔╝██║',
            \ '  ╚████╔╝ ██║██║ ╚═╝ ██║',
            \ '   ╚═══╝  ╚═╝╚═╝     ╚═╝',
          \]
let g:startify_custom_header = g:head

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   file']            },
          \ { 'type': 'dir',       'header': ['   dirs']            },
          \ { 'type': 'commands',  'header': ['   cmds']            },
          \ ]
let g:startify_files_number = 5
let g:startify_padding_left = 3
let g:startify_custom_indices = []
let g:startify_custom_indices = ['', '', '', '', '', '', '', '', '', '']

colorscheme levuaska

