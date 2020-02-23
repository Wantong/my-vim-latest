let mapleader=" "
syntax on
set number
set rnu
set cursorline
set showcmd
set wildmenu
colorscheme desert
set hlsearch



" Windows split command mapping" 
map su :set splitright<CR>:vsplit<CR>
map si :set nosplitright<CR>:vsplit<CR>
map so :set nosplitbelow<CR>:split<CR>
map sp :set splitbelow<CR>:split<CR>

map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>
map ; :

map <LEADER>l <C-w>l
map <LEADER>k <C-w>k
map <LEADER>j <C-w>j
map <LEADER>h <C-w>h 
map <LEADER>n :bn<CR>

call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'

" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" File Navigator
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" File coc plug
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}

call plug#end()

" ===
" === NERDTree
" ===
map tt :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"


" ===
" === MarkdownPreview
" ===
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'firefox'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'


