""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  General                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 预处理
augroup Common
  autocmd!

  " cursorline
  autocmd WinLeave * set nocursorline
  autocmd WinEnter * set cursorline

  " auto format chinese
  autocmd BufWritePre *.markdown,*.md,*.text,*.txt,*.wiki,*.cnx call PanGuSpacing()
augroup end

" 全局设定leader键
let g:mapleader = "\<Space>"

" 设置背景
set background=dark

" 使用vim键位
set nocompatible

" 取消声音
set noerrorbells
set noeb

" 取消闪烁
set novisualbell

" history文件中需要记录的行数
set history=100

" 读写设置
set autoread
set noautowrite

" 状态栏设置
set laststatus=2
set noshowmode

" 关闭菜单ALT
set winaltkeys=no

" 行号设置
set number
set relativenumber

" 输入:set list显示什么
set list
set listchars=tab:▸\ ,eol:\ ,trail:·,extends:↷,precedes:↶
set fillchars=vert:│,fold:·

" 鼠标设置
set mouse=a
set selection=exclusive
set selectmode=mouse,key

" 剪贴板设置
set clipboard+=unnamed

" 使回格键（backspace）正常处理 indent, eol, start 等
set backspace=2
" 允许 backspace 和光标键跨越行边界
set whichwrap+=<,>,h,l

" 命令行默认高度
set cmdheight=2

" 处理备份、缓存等文件
set noswapfile
set nobackup
set nowritebackup
set undofile
set undodir=~/.vim/undodir

" 如果没有undodir文件夹则创建
if !isdirectory(&undodir)
    call mkdir(&undodir, 'p', 0700)
endif

" 命令行增强
set wildmenu
set wildmode=longest,full
set completeopt=menu,menuone
set cursorline
set scrolloff=1

" 编码设置
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set encoding=utf-8
set termencoding=utf-8

" use scriptencoding when multibyte char exists
scriptencoding utf-8

" Session
set sessionoptions=blank,buffers,sesdir,folds,help,options,tabpages,winsize

" 语法检查
filetype plugin indent on
if !exists('g:syntax_on')
  syntax enable
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Mappings                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap < <<
nnoremap > >>
vnoremap < <gv
vnoremap > >gv

nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

noremap H ^
noremap L $
nnoremap J G
nnoremap K gg

vnoremap J G
vnoremap K gg

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

nnoremap <silent> \ :nohlsearch<Cr>

cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

nnoremap <silent> <Leader>sv :source $MYVIMRC<Cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Plugin                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

  " Colorscheme
  Plug 'w0ng/vim-hybrid'
  Plug 'gruvbox-community/gruvbox'
  Plug 'KeitaNakamura/neodark.vim'
  Plug 'crusoexia/vim-monokai'
  Plug 'acarapetis/vim-colors-github'
  Plug 'rakr/vim-one'
  Plug 'dracula/vim', { 'as': 'dracula' } " dracula

  " Language
  Plug 'fatih/vim-go', { 'tag': '*' }
  Plug 'dgryski/vim-godef'
  Plug 'python-mode/python-mode'
  Plug 'adah1972/cscope_maps.vim'
  Plug 'nathangrigg/vim-beancount'

  " UI
  Plug 'luochen1990/rainbow'
  Plug 'Yggdroot/indentLine'
  Plug 'airblade/vim-gitgutter'
  Plug 'kristijanhusak/defx-icons'
  Plug 'kristijanhusak/defx-git'
  Plug 'bling/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'sjl/gundo.vim', { 'on': 'GundoToggle' }
  Plug 'mhinz/vim-startify'

" Integration
  Plug 'scrooloose/nerdcommenter'
  Plug 'scrooloose/nerdtree'
  Plug 'jistr/vim-nerdtree-tabs'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'
  Plug 'easymotion/vim-easymotion'
  Plug 'alvan/vim-closetag'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'rhysd/git-messenger.vim'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'chaoren/vim-wordmotion'
  Plug 'matze/vim-move'
  Plug 'majutsushi/tagbar'
  Plug 'junegunn/vim-easy-align'
  Plug 'jiangmiao/auto-pairs'
  Plug 'mileszs/ack.vim'
  Plug 'kien/ctrlp.vim'
  Plug 'wakatime/vim-wakatime'

call plug#end()

nnoremap <silent> <Leader>pi :PlugInstall<Cr>
nnoremap <silent> <Leader>pc :PlugClean<Cr>
nnoremap <silent> <Leader>pu :PlugUpdate<Cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Colorscheme                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" colorscheme hybrid
" colorscheme one
" colorscheme monokai
" colorscheme github
colorscheme gruvbox

" gruvbox
let g:gruvbox_bold = 1
let g:gruvbox_italic = 1
let g:gruvbox_sign_column = 'bg0'
let g:gruvbox_invert_selection = 0

" hybrid
let g:hybrid_custom_term_colors = 1
let g:hybrid_bold = 1
let g:hybrid_sign_column = 'bg0'
let g:hybrid_invert_selection = 0


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Text                                     "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 设置拼写检查
set spell
set spelllang+=cjk

" 自动格式化
set formatoptions=tcrqn

" 继承前一行的缩进方式，适用于多行注释
set autoindent

" 文本Wrap
set wrap
set textwidth=79
set colorcolumn=""

" 缩进设置
set smarttab
set expandtab
set softtabstop=4
set shiftwidth=4
set tabstop=4

" 折叠
set nofoldenable
set foldmethod=syntax
set foldlevelstart=2
set conceallevel=0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Search                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 显示匹配
set showmatch

" 搜索忽略大小写
set ignorecase
set smartcase
set hlsearch
set incsearch

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Language                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ----------------------------------------------------------------------------
" Go
" ----------------------------------------------------------------------------

" 基础设置
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

" goimports
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1
let g:go_fmt_fail_silently = 1

" highlight
let g:go_version_warning = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1

" godef设置
let g:go_def_mode = 'godef'
let g:godef_split=2

" lint设置
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_deadline = "5s"

" identifier
" let g:go_auto_type_info = 1
" let g:go_auto_sameids = 1
" set updatetime=100
" autocmd FileType go nmap <Leader>i <Plug>(go-info)

" ----------------------------------------------------------------------------
" C
" ---------------------------------------------------------------------------

let g:c_space_errors = 1
let g:c_gnu = 1
let g:c_no_cformat = 1
let g:c_no_curly_error = 1
if exists('g:c_comment_strings')
  unlet g:c_comment_strings
endif

" 更新tags
function! AppendCtagsForC(file_path)
  let saved_path = getcwd()
  exe 'lcd ' . a:root_path
  exe 'silent !ctags --languages=c --langmap=c:.c.h --fields=+S -a '
        \. a:file_path
  exe 'lcd ' . saved_path
endfunction

au BufWritePost /project/path/* call
      \ AppendCtagsForC('/project/path/', expand('%'))

set cscopequickfix=s-,c-,d-,i-,t-,e-,a-

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Integration                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ----------------------------------------------------------------------------
" NERDTree
" ----------------------------------------------------------------------------

" 快捷键
map <F7> :NERDTreeToggle<CR>

" 显示设置
let NERDTreeWinSize=35

" 显示行号
let NERDTreeShowLineNumbers=1

" 打开文件时是否显示目录
let NERDTreeAutoCenter=1

" 是否显示隐藏文件
let NERDTreeShowHidden=0

" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']

" Git状态
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

let g:NERDTreeGitStatusShowIgnored = 1

" nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultNesting = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = {
  \   'clojure': { 'left': ';;' },
  \ }

" ----------------------------------------------------------------------------
" Tagbar
" ----------------------------------------------------------------------------

" 快捷键
nmap <F8> :TagbarToggle<CR>

" 显示设置
let g:tagbar_width = 35

" Tag设置
let g:tagbar_type_go = {
            \ 'ctagstype' : 'go',
            \ 'kinds'     : [
            \ 'p:package',
            \ 'i:imports:1',
            \ 'c:constants',
            \ 'v:variables',
            \ 't:types',
            \ 'n:interfaces',
            \ 'w:fields',
            \ 'e:embedded',
            \ 'm:methods',
            \ 'r:constructor',
            \ 'f:functions'
            \ ],
            \ 'sro' : '.',
            \ 'kind2scope' : {
            \ 't' : 'ctype',
            \ 'n' : 'ntype'
            \ },
            \ 'scope2kind' : {
            \ 'ctype' : 't',
            \ 'ntype' : 'n'
            \ },
            \ 'ctagsbin'  : 'gotags',
            \ 'ctagsargs' : '-sort -silent'
            \ }

" vim-surround
nmap <silent> , ysiw
let g:surround_35 = "#{\r}"
let g:surround_36 = "${\r}"

" vim-easymotion
map <silent> <Leader>h <Plug>(easymotion-linebackward)
map <silent> <Leader>j <Plug>(easymotion-w)
map <silent> <Leader>k <Plug>(easymotion-b)
map <silent> <Leader>l <Plug>(easymotion-lineforward)
let g:EasyMotion_keys = 'asdhjkl;qwer'
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_grouping = 2
let g:EasyMotion_smartcase = 1

" vim-fileheader
let g:fileheader_auto_add = 0
let g:fileheader_show_email = 0

" vim-trailing-whitespace
let g:extra_whitespace_ignored_filetypes = ['defx', 'help', 'grep', 'search']
augroup TrailingSpace
  autocmd!
  autocmd BufWritePre * FixWhitespace
augroup END

" vim-move
let g:move_map_keys = 0
vmap <C-j> <Plug>MoveBlockDown
vmap <C-k> <Plug>MoveBlockUp
vmap <C-h> <Plug>MoveBlockLeft
vmap <C-l> <Plug>MoveBlockRight

" copy-paste
vmap <Leader>c "+yy
nmap <Leader>c "+yy
nmap <Leader>v "+p


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                     UI                                     "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" indentLine
nnoremap <silent> <Leader><Tab> :IndentLinesToggle<Cr>
let g:indentLine_enabled = 1
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#504945'
let g:indentLine_faster = 1
" let g:indentLine_char = '┊'

" defx-icons
let g:defx_icons_enable_syntax_highlight = 1

" vim-airline
let g:airline_theme="gruvbox"
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#show_tabs = 0
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#hunks#enabled = 0

" gundo
nnoremap <silent> <Leader>ud :GundoToggle<Cr>
let g:gundo_width = 50
let g:gundo_preview_height = 40
let g:gundo_right = 1
let g:gundo_prefer_python3 = 1

" LeaderF
nnoremap <silent> <C-p> :Leaderf file<Cr>
nnoremap <silent> <C-f> :Leaderf rg<Cr>
nnoremap <silent> <C-q> :Leaderf line<Cr>
nnoremap <silent> <Leader><Leader> :Leaderf buffer<Cr>

" vim-startify
let g:startify_lists = [
  \ { 'type': 'files',     'header': ['   MRU']            },
  \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
  \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
  \ { 'type': 'commands',  'header': ['   Commands']       },
  \ ]
let g:startify_change_to_dir = 0

autocmd FileType beancount inoremap . .<C-O>:AlignCommodity<CR>
autocmd FileType beancount inoremap <Tab> <c-x><c-o>