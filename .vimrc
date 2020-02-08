" Fisa-vim-config
" http://fisadev.github.io/fisa-vim-config/
" version: 8.3.1

" ============================================================================
" Vim-plug initialization
" Avoid modify this section, unless you are very sure of what you are doing

let vim_plug_just_installed = 0
let vim_plug_path = expand('~/.vim/autoload/plug.vim')
if !filereadable(vim_plug_path)
    echo "Installing Vim-plug..."
    echo ""
    silent !mkdir -p ~/.vim/autoload
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    let vim_plug_just_installed = 1
endif
" manually load vim-plug the first time
if vim_plug_just_installed
    :execute 'source '.fnameescape(vim_plug_path)
endif

" Obscure hacks done, you can now modify the rest of the .vimrc as you wish :)

" ============================================================================
" Active plugins
" You can disable or add new ones here:

" this needs to be here, so vim-plug knows we are declaring the plugins we
" want to use
call plug#begin('~/.vim/plugged')


"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/autoload
call vundle#begin()

"Pathogen load
filetype off
call pathogen#infect()
call pathogen#helptags()
set nocompatible
syntax on   
filetype plugin on
if has("autocmd")
    filetype plugin indent on
endif
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2
"
"
" ##################### Plugins section ###################################
"
"
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'gmarik/Vundle.vim'

" Override configs by directory 
Plug 'arielrossanigo/dir-configs-override.vim'
" Better file browser
Plug 'scrooloose/nerdtree'
" Code commenter
Plug 'scrooloose/nerdcommenter'
" Class/module browser
Plug 'majutsushi/tagbar'
" Code and files fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'
" Extension to ctrlp, for fuzzy command finder
Plug 'fisadev/vim-ctrlp-cmdpalette'
" Zen coding
Plug 'mattn/emmet-vim'
" Git integration
Plug 'motemen/git-vim'
" Tab list panel
Plug 'kien/tabman.vim'
" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Terminal Vim with 256 colors colorscheme
Plug 'fisadev/fisa-vim-colorscheme'
" Consoles as buffers
Plug 'rosenfeld/conque-term'
" Pending tasks list
Plug 'fisadev/FixedTaskList.vim'
" Surround
Plug 'tpope/vim-surround'
" Autoclose
Plug 'Townk/vim-autoclose'
" Indent text object
Plug 'michaeljsmith/vim-indent-object'
" Indentation based movements
Plug 'jeetsukumaran/vim-indentwise'
" Python autocompletion, go to definition.
Plug 'davidhalter/jedi-vim'
" Better autocompletion
Plug 'Shougo/neocomplcache.vim'
" Snippets manager (SnipMate), dependencies, and snippets repo
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'honza/vim-snippets'
Plug 'garbas/vim-snipmate'
" Git/mercurial/others diff icons on the side of the file lines
Plug 'mhinz/vim-signify'
" Automatically sort python imports
Plug 'fisadev/vim-isort'
" Drag visual blocks arround
Plug 'fisadev/dragvisuals.vim'
" Window chooser
Plug 't9md/vim-choosewin'
" Python and other languages code checker
Plug 'scrooloose/syntastic'
" Paint css colors with the real color
Plug 'lilydjwg/colorizer'
" Ack code search (requires ack installed in the system)
Plug 'mileszs/ack.vim'
if has('python')
    " YAPF formatter for Python
    Plug 'pignacio/vim-yapf-format'
endif
" Plugins from vim-scripts repos:

" Search results counter
Plug 'vim-scripts/IndexedSearch'
" XML/HTML tags navigation
Plug 'vim-scripts/matchit.zip'
" Gvim colorscheme
Plug 'vim-scripts/Wombat'
" Yank history navigation
Plug 'vim-scripts/YankRing.vim'
" Put for block moving in vim
Plug 'matze/vim-move'

" Tell vim-plug we finished declaring plugins, so it can load them
call plug#end()
" ============================================================================
" Install plugins the first time vim runs

if vim_plug_just_installed
    echo "Installing Bundles, please ignore key map error messages"
    :PlugInstall
endif

" ============================================================================

"Insert Plugin
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
"-------------------------------------------
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"-------------------------------------------
"Plugin for Zoom in / out windows
Plugin 'https://github.com/vim-scripts/ZoomWin.git'
"-------------------------------------------
"Personal note for using with markdown named vimwiki
Plugin 'vimwiki/vimwiki'
"-------------------------------------------
"Plugin for plasticboy/vim-markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"-------------------------------------------
"Setting screensize
Plugin 'junegunn/goyo.vim'
"-------------------------------------------
"Plugin macdic using for finding meaning of any work
Plugin 'jonhiggs/MacDict.vim'
"-------------------------------------------
"Plugin 'universal-ctags/ctags'
Plugin 'universal-ctags/ctags'
"-------------------------------------------
"Plugin for javascript syntax
Plugin 'https://github.com/pangloss/vim-javascript.git' 
"-------------------------------------------
"Plugin for autoclose },)
Plugin 'https://github.com/Townk/vim-autoclose'
"-------------------------------------------
"Plugin for TMux
Plugin 'christoomey/vim-tmux-navigator'
"-------------------------------------------
"Plugin PhpQATool
Plugin 'https://github.com/joonty/vim-phpqa.git'
"-------------------------------------------
"Plugin superTab
"Plugin 'https://github.com/ervandew/supertab.git'
"-------------------------------------------
"Insert for vimoutliner for note taking process -  this use with markdown
"concept
Plugin 'vimoutliner/vimoutliner'
"-------------------------------------------
"Plugin for colourscheme
Plugin 'flazz/vim-colorschemes'
"-------------------------------------------
"Plugin tslime
Plugin 'https://github.com/jgdavey/tslime.vim'
"-------------------------------------------
"Plugin vim-rspec for sending comand to another tmx pane
Plugin 'https://github.com/thoughtbot/vim-rspec.git'
"-------------------------------------------
"Plugin for commentary shortcut
Plugin 'https://github.com/tpope/vim-commentary.git'
"-------------------------------------------
"Plugin for snippet
"Plugin 'https://github.com/msanders/snipmate.vim.git'
"-------------------------------------------
"Plugin for SimplyFold
Plugin 'tmhedberg/SimpylFold'
"-------------------------------------------
"Plugin for VimDiff
"Plugin 'https://github.com/chrisbra/vim-diff-enhanced.git'
"-------------------------------------------
"Plugin for ReplaceWithRegister
Plugin 'https://github.com/vim-scripts/ReplaceWithRegister.git'
"-------------------------------------------
"Plugin for Raidbow (parenthesis)
Plugin 'https://github.com/luochen1990/rainbow.git'
"-------------------------------------------
"Plugin Ultisnip
" Track the engine.
"Plugin 'https://github.com/SirVer/ultisnips.git'
"
"Plugin postgresql 
Plugin 'https://github.com/lifepillar/pgsql.vim.git'
"-------------------------------------------
"Plugin for TitleCase
Plugin 'https://github.com/christoomey/vim-titlecase.git'
"-------------------------------------------
"Plugin for Sort-motion
Plugin 'https://github.com/christoomey/vim-sort-motion.git'
"-------------------------------------------
"Plugin for System-Copy
Plugin 'https://github.com/christoomey/vim-system-copy.git'
"-------------------------------------------
"Plugin for  Indent Guide Key for indent = >"
Plugin 'https://github.com/nathanaelkane/vim-indent-guides.git'
"-------------------------------------------
"Plugin for tbone for sending any text between tmux windows and pane
Plugin 'https://github.com/tpope/vim-tbone.git'
"-------------------------------------------
"Insert Plugin for relative and absolute line number
Plugin 'https://github.com/myusuf3/numbers.vim.git'
"-------------------------------------------
" All of your Plugins must be added before the following line
call vundle#end()            " required


" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
" ============================================================================
" Vim settings and mappings
" You can edit them as you wish

" no vi-compatible
set nocompatible

" allow plugins by file type (required for plugins!)
filetype plugin on
filetype indent on

" tabs and spaces handling
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" tab length exceptions on some file types
autocmd FileType html setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType htmldjango setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 softtabstop=4

" always show status bar
set ls=2

" incremental search
set incsearch
" highlighted search results
set hlsearch

" syntax highlight on
syntax on

" show line numbers
set nu
" tab navigation mappings
map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm 
map tt :tabnew 
map ts :tab split<CR>
map <C-S-Right> :tabn<CR>
imap <C-S-Right> <ESC>:tabn<CR>
map <C-S-Left> :tabp<CR>
imap <C-S-Left> <ESC>:tabp<CR>

" navigate windows with meta+arrows
map <M-Right> <c-w>l
map <M-Left> <c-w>h
map <M-Up> <c-w>k
map <M-Down> <c-w>j
imap <M-Right> <ESC><c-w>l
imap <M-Left> <ESC><c-w>h
imap <M-Up> <ESC><c-w>k
imap <M-Down> <ESC><c-w>j

" old autocomplete keyboard shortcut
imap <C-J> <C-X><C-O>

" Comment this line to enable autocompletion preview window
" (displays documentation related to the selected completion option)
" Disabled by default because preview makes the window flicker
set completeopt-=preview

" save as sudo
ca w!! w !sudo tee "%"

" simple recursive grep
nmap ,r :Ack 
nmap ,wr :Ack <cword><CR>

" use 256 colors when possible
if (&term =~? 'mlterm\|xterm\|xterm-256\|screen-256') || has('nvim')
	let &t_Co = 256
    colorscheme fisa
else
    colorscheme delek
endif

" colors for gvim
if has('gui_running')
    colorscheme wombat
endif

" when scrolling, keep cursor 3 lines away from screen border
set scrolloff=3

" autocompletion of files and commands behaves like shell
" (complete only the common part, list the options that match)
set wildmode=list:longest

" better backup, swap and undos storage
set directory=~/.vim/dirs/tmp     " directory to place swap files in
set backup                        " make backup files
set backupdir=~/.vim/dirs/backups " where to put backup files
set undofile                      " persistent undos - undo after you re-open the file
set undodir=~/.vim/dirs/undos
set viminfo+=n~/.vim/dirs/viminfo
" store yankring history file there too
let g:yankring_history_dir = '~/.vim/dirs/'

" create needed directories if they don't exist
if !isdirectory(&backupdir)
    call mkdir(&backupdir, "p")
endif
if !isdirectory(&directory)
    call mkdir(&directory, "p")
endif
if !isdirectory(&undodir)
    call mkdir(&undodir, "p")
endif

" ============================================================================
" Plugins settings and mappings
" Edit them as you wish.

" Tagbar ----------------------------- 

" toggle tagbar display
map <F4> :TagbarToggle<CR>
" autofocus on tagbar open
let g:tagbar_autofocus = 1

" NERDTree ----------------------------- 

" toggle nerdtree display
map <F3> :NERDTreeToggle<CR>
" open nerdtree with the current file selected
nmap ,t :NERDTreeFind<CR>
" don;t show these file types
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']

" Tasklist ------------------------------

" show pending tasks list
map <F2> :TaskList<CR>

" CtrlP ------------------------------

" file finder mapping
let g:ctrlp_map = ',e'
" tags (symbols) in current file finder mapping
nmap ,g :CtrlPBufTag<CR>
" tags (symbols) in all files finder mapping
nmap ,G :CtrlPBufTagAll<CR>
" general code finder in all files mapping
nmap ,f :CtrlPLine<CR>
" recent files finder mapping
nmap ,m :CtrlPMRUFiles<CR>
" commands finder mapping
nmap ,c :CtrlPCmdPalette<CR>
" to be able to call CtrlP with default search text
function! CtrlPWithSearchText(search_text, ctrlp_command_end)
    execute ':CtrlP' . a:ctrlp_command_end
    call feedkeys(a:search_text)
endfunction
" same as previous mappings, but calling with current word as default text
nmap ,wg :call CtrlPWithSearchText(expand('<cword>'), 'BufTag')<CR>
nmap ,wG :call CtrlPWithSearchText(expand('<cword>'), 'BufTagAll')<CR>
nmap ,wf :call CtrlPWithSearchText(expand('<cword>'), 'Line')<CR>
nmap ,we :call CtrlPWithSearchText(expand('<cword>'), '')<CR>
nmap ,pe :call CtrlPWithSearchText(expand('<cfile>'), '')<CR>
nmap ,wm :call CtrlPWithSearchText(expand('<cword>'), 'MRUFiles')<CR>
nmap ,wc :call CtrlPWithSearchText(expand('<cword>'), 'CmdPalette')<CR>
" don't change working directory
let g:ctrlp_working_path_mode = 0
" ignore these files and folders on file finder
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn|node_modules)$',
  \ 'file': '\.pyc$\|\.pyo$',
  \ }


" Syntastic ------------------------------

" show list of errors and warnings on the current file
nmap <leader>e :Errors<CR>
" check also when just opened the file
let g:syntastic_check_on_open = 1
" don't put icons on the sign column (it hides the vcs status icons of signify)
let g:syntastic_enable_signs = 0
" custom icons (enable them if you use a patched font, and enable the previous 
" setting)
"let g:syntastic_error_symbol = '✗'
"let g:syntastic_warning_symbol = '⚠'
"let g:syntastic_style_error_symbol = '✗'
"let g:syntastic_style_warning_symbol = '⚠'

" Jedi-vim ------------------------------

" All these mappings work only for python code:
" Go to definition
let g:jedi#goto_command = ',d'
" Find ocurrences
let g:jedi#usages_command = ',o'
" Find assignments
let g:jedi#goto_assignments_command = ',a'
" Go to definition in new tab
nmap ,D :tab split<CR>:call jedi#goto()<CR>

" NeoComplCache ------------------------------

" most of them not documented because I'm not sure how they work
" (docs aren't good, had to do a lot of trial and error to make 
" it play nice)
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_ignore_case = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_enable_fuzzy_completion = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_fuzzy_completion_start_length = 1
let g:neocomplcache_auto_completion_start_length = 1
let g:neocomplcache_manual_completion_start_length = 1
let g:neocomplcache_min_keyword_length = 1
let g:neocomplcache_min_syntax_length = 1
" complete with workds from any opened file
let g:neocomplcache_same_filetype_lists = {}
let g:neocomplcache_same_filetype_lists._ = '_'

" TabMan ------------------------------

" mappings to toggle display, and to focus on it
let g:tabman_toggle = 'tl'
let g:tabman_focus  = 'tf'

" Autoclose ------------------------------

" Fix to let ESC work as espected with Autoclose plugin
let g:AutoClosePumvisible = {"ENTER": "\<C-Y>", "ESC": "\<ESC>"}

" DragVisuals ------------------------------

" mappings to move blocks in 4 directions
vmap <expr> <S-M-LEFT> DVB_Drag('left')
vmap <expr> <S-M-RIGHT> DVB_Drag('right')
vmap <expr> <S-M-DOWN> DVB_Drag('down')
vmap <expr> <S-M-UP> DVB_Drag('up')
" mapping to duplicate block
vmap <expr> D DVB_Duplicate()

" vim-move -----------------------------
let g:move_key_modifier = 'C'


" Signify ------------------------------

" this first setting decides in which order try to guess your current vcs
" UPDATE it to reflect your preferences, it will speed up opening files
let g:signify_vcs_list = [ 'git', 'hg' ]
" mappings to jump to changed blocks
nmap <leader>sn <plug>(signify-next-hunk)
nmap <leader>sp <plug>(signify-prev-hunk)
" nicer colors
highlight DiffAdd           cterm=bold ctermbg=none ctermfg=119
highlight DiffDelete        cterm=bold ctermbg=none ctermfg=167
highlight DiffChange        cterm=bold ctermbg=none ctermfg=227
highlight SignifySignAdd    cterm=bold ctermbg=237  ctermfg=119
highlight SignifySignDelete cterm=bold ctermbg=237  ctermfg=167
highlight SignifySignChange cterm=bold ctermbg=237  ctermfg=227

" Window Chooser ------------------------------

" mapping
nmap  -  <Plug>(choosewin)
" show big letters
let g:choosewin_overlay_enable = 1

" Airline ------------------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 0
let g:airline_theme = 'bubblegum'
let g:airline#extensions#whitespace#enabled = 0

" to use fancy symbols for airline, uncomment the following lines and use a
" patched font (more info on the README.rst)
"if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
"endif
"let g:airline_left_sep = '⮀'
"let g:airline_left_alt_sep = '⮁'
"let g:airline_right_sep = '⮂'
"let g:airline_right_alt_sep = '⮃'
"let g:airline_symbols.branch = '⭠'
"let g:airline_symbols.readonly = '⭤'
"let g:airline_symbols.linenr = '⭡'


"-------------------------------------------
" ##################### Setting section for each plugin #####################
" for dbext SQLCompletion errors
let g:omni_sql_no_default_maps = 1
"
" Setting for Vimwiki      -------------------------
"nmap <Leader>we <Plug>VimwikiSplitLink
"
" Setting for Vimwiki     --------------------------
"
" Setting for MacDict-------------------------
map <F11> "dyiw:call MacDict(@d)<CR>
" Setting for MacDict-------------------------
" Setting for plasticboy/vim-markdown -------------------------
let g:vim_markdown_folding_style_pythonic = 0
let g:vim_markdown_override_foldtext = 0 
set conceallevel=0
let g:vim_markdown_conceal = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_follow_anchor = 1
let g:vim_markdown_autowrite = 1
let g:vim_markdown_edit_url_in = 'hsplit'
let g:vim_markdown_auto_extension_ext = 'txt'
" Setting for plasticboy/vim-markdown -------------------------
" Setting for UltiSnip -------------------------
inoremap '<c-x>''<c-k>' '<c-x>''<c-k>'
let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsSnippetsDir="~/.vim/chartsnippets"
let g:UltiSnipsSnippetDirectories="~/.vim/bundle/vim-snippets/UltiSnips"
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"Set for javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
" Setting for UltiSnip -------------------------

""Set Key mapping for toggle absolute and relative numbers
""let g: numbers_exclude = ['tagbar', 'gundo', 'minibufexpl', 'nerdtree']
nnoremap <F2> :NumbersToggle <CR>
nnoremap <F3> :NumbersOnOff <CR>

colorscheme molokai
set mouse=a

"Setting for emmet mapping Key for emmet = <C-y> follow by ,
"let g:user_emmet_mode='n'    "only enable normal mode functions.
"let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_install_global = 0
autocmd FileType php,html,css,js EmmetInstall

"Setting map key for tslime Key for Tmux = \t
vmap \t <Plug>SendSelectionToTmux
nmap \t <Plug>NormalModeSendToTmux
nmap \<r <Plug>SetTmuxVars
let g:tslime_ensure_trailing_newlines=1

"Key for tmux 
"Using <C-a> j => Move to lower pane
"Using <C-a> k => Move to upper pane
"Using <C-a> h => Move to Left pane
"Using <C-a> l => Move to Right pane
"Using <C-a> x => Kill current pane
"Using <C-a> o => Swap pane
"Using <C-a> Shift j => resize current pane down
"Using <C-a> Shift k => resize current pane up

"Setting for SuperTab
let g:SuperTabDefaultCompletionType =""

"This Command is for NERDTree
"<C-l> goto right pane
"<C-h> goto left pane
"<C-j> goto lower pane
"<C-k> goto upper pane
"O => Open file, cd = Change Directory
nnoremap <Leader>n :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
set modifiable 
""autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Setting for Rainbow
let g:rainbow_active = 1 
"0 if you want to enable it later via :RainbowToggle
"-------------------------------------------


"The i in inoremap means that the remap only applies in insert mode.
"The noremap means that the remap can't be overridden later in your .vimrc file 
"by accident, or by a plugin.
"The ,c is the key combination that triggers the key map.
"The <C-o> temporarily takes you out of insert mode for one command, 
"so the next section of the remap can call the NERDComment function.
"The :call NERDComment(0,"toggle") is the NERDComment function being called.
"Then <C-m> is another way of saying carriage return, which executes the command.

"Setting key for insertmode provide hjkl movements in 
"        Insert mode via the <Alt> modifier key
inoremap <C-h> <esc>ha
inoremap <C-j> <esc>ja
inoremap <C-k> <esc>ka
inoremap <C-l> <esc>la
inoremap <C-b> <esc>ba
inoremap <C-w> <esc>wa 
inoremap <C-d> <esc>dda
inoremap <C-e> <esc>dli
inoremap ,,,  <esc>
inoremap <C-u>l <esc>viwu<esc>A
noremap <C-u>l viwu<esc>A
inoremap <C-u> <esc>viwU<esc>A
noremap <C-u> viwU<esc>A
"Using this map command to map qq => insert ' for the selected group of
"character in visual mode
vnoremap qq <Esc>`>a'<Esc>`<i'<Esc>
"Using this map command to map qq => insert " for the selected group of
"character in visual mode
vnoremap qd <Esc>`>a"<Esc>`<i"<Esc>
"Using this map command to search for visual selected character 
vnoremap g/ y/<C-R>"<CR>let mapleader=","
"Using for yank multi lines between two vim instance by ",y" and past to the
"other vim instance by ",p"
vmap <leader>y  :w! /tmp/vitmp
nmap <leader>p  :r! cat /tmp/vitmp
""This Command is for NERDTree
""Setting is for nerdComment,Key leader for comment= ,cc uncomment= ,cu
let mapleader = ","
inoremap ,c <C-o> :call NERDComment(0,"toggle")<C-m>

set timeoutlen=2000
set tabstop=4
set shiftwidth=4
set expandtab
set ruler
map <C-m> <C-w><
map <C-n> <C-w>>
map <C-t> <C-w>-
map <C-b> <C-w>+
"Setting for map normal mode ',cd' to change directory to current file path
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

"Setting for SuperTab
"let g:SuperTabDefaultCompletionType = <c-p>"
"let g:SuperTabContextDefaultCompletionType = <c-p>"
"


set number
set tabstop=4
set colorcolumn=180

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%F\ %l\:%c


""setting for syntastic
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_loc_list_height = 5
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 1
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_error_symbol = 'x'
"let g:syntastic_style_error_symbol = '!?'
"let g:syntastic_warning_symbol = '!'
"let g:syntastic_style_warning_symbol = ';x'
"highlight link SyntasticErrorSign SignColumn
"highlight link SyntasticWarningSign SignColumn
"highlight link SyntasticStyleErrorSign SignColumn
"highlight link SyntasticStyleWarningSign SignColumn

"setting for pgsql
let g:sql_type_default = 'pgsql'
let b:sql_type_override='pgsql' | set ft=sql
let g:pgsql_pl = ['python']

"" python-mode
"let g:pymode_options = 0              " do not change relativenumber
"let g:pymode_indent = 0               " use vim-python-pep8-indent (upstream of pymode)
"let g:pymode_lint = 0                 " prefer syntastic; pymode has problems when PyLint was invoked already before VirtualEnvActivate..!?!
"let g:pymode_virtualenv = 0           " use virtualenv plugin (required for pylint?!)
"let g:pymode_doc = 0                  " use pydoc
""let g:pymode_rope_completion = 0      " use YouCompleteMe instead (python-jedi)
"let g:pymode_syntax_space_errors = 0  " using MyWhitespaceSetup
"let g:pymode_trim_whitespaces = 0
"let g:pymode_debug = 0
"let g:pymode_rope = 0
""Setting for Jedi-Vim #######################################
"autocmd FileType python setlocal completeopt-=preview
"let g:jedi#auto_initialization = 0
"let g:jedi#auto_vim_configuration = 0

"Setting for Jedi-Vim #######################################

"map ] follow by <space> key for inserting new line below cursor line
"map [ follow by <space> for inserting new line above cursor line
nnoremap <silent> ]<Space> :<C-u>put =repeat(nr2char(10),v:count)<Bar>execute "'[-1"<CR>
nnoremap <silent> [<Space> :<C-u>put!=repeat(nr2char(10),v:count)<Bar>execute "']+1"<CR>
"set F3 for insert Current Datetime
nnoremap <F3> "=strftime("%Y-%m-%d (%a)")<CR>P
inoremap <F3> <C-R>=strftime("%Y-%m-%d (%a)")<CR>
"Using ,T to insert time ,d to insert Date and ,l to insert datetime  --> (in
"insertmode.  Anyway, in Normal mode we can press 14 followed by C-A or C-X to
"increase and decrease date and time
noremap! <expr> ,T strftime("%H:%M:%S")
noremap! <expr> ,d strftime("%Y-%m-%d %a")
noremap! <expr> ,l strftime("%Y-%m-%d %H:%M")
"set tab and trail character showwing in the editor
set listchars=tab:>~,nbsp:-,trail:.
set list
"try to run python code in vim by pressing \p
fu! PyRunX() range
  echo system('python -c ' . shellescape(join(getline(a:firstline, a:lastline), "\n")))
endf
vmap \r :call PyRunX()<CR>
nmap \r :call PyRunX()<CR>
" Setting for Markdown to HTML
" We use this function for transfering *.md, *.mkd, or *.markdown to *.html
" by typing ",md" in the vim normal mode.  Vim will create new html file for
" us
fu! CreateMd()
    %w !/usr/local/bin/Markdown.pl --html4tags > '%:p:h/mdhtml/%:t:r.html' 
    vs %:p:h/mdhtml/%:t:r.html
endf
nnoremap <silent> <leader>md  :call CreateMd()<CR>
nnoremap <leader>sl /[<CR>
" -------------------------------------------------------------
" Setting for Markdown to HTML


"Test add last text sentence
