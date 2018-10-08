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

Plugin 'scrooloose/nerdtree'
Plugin 'Buffergator'
" Vim-plug section
Plugin 'python-mode/python-mode', {'branch': 'develop'}
"Insert Plugin
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'mattn/emmet-vim'
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
"Plugin for syntastic
Plugin 'https://github.com/vim-syntastic/syntastic.git'
"-------------------------------------------
"Plugin for jedi-vim
Plugin 'davidhalter/jedi-vim'
"-------------------------------------------
"Insert for vimoutliner for note taking process -  this use with markdown
"concept
Plugin 'vimoutliner/vimoutliner'
"-------------------------------------------
"Plugin for colourscheme
Plugin 'flazz/vim-colorschemes'
"-------------------------------------------
"Plugin for beter comment
Plugin 'https://github.com/scrooloose/nerdcommenter'
"-------------------------------------------
"Plugin tslime
Plugin 'https://github.com/jgdavey/tslime.vim'
"-------------------------------------------
"Plugin vim-rspec for sending comand to another tmx pane
Plugin 'https://github.com/thoughtbot/vim-rspec.git'
"-------------------------------------------
"Plugin for surround shortCut
Plugin 'tpope/vim-surround'
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
" " Snippets are separated from the engine. Add this if you want them:
Plugin 'https://github.com/honza/vim-snippets.git'
"-------------------------------------------
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
"-------------------------------------------
" ##################### Setting section for each plugin #####################
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


"setting for syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_error_symbol = 'x'
let g:syntastic_style_error_symbol = '!?'
let g:syntastic_warning_symbol = '!'
let g:syntastic_style_warning_symbol = ';x'
highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

"setting for pgsql
let g:sql_type_default = 'pgsql'
let b:sql_type_override='pgsql' | set ft=sql
let g:pgsql_pl = ['python']

" python-mode
let g:pymode_options = 0              " do not change relativenumber
let g:pymode_indent = 0               " use vim-python-pep8-indent (upstream of pymode)
let g:pymode_lint = 0                 " prefer syntastic; pymode has problems when PyLint was invoked already before VirtualEnvActivate..!?!
let g:pymode_virtualenv = 0           " use virtualenv plugin (required for pylint?!)
let g:pymode_doc = 0                  " use pydoc
"let g:pymode_rope_completion = 0      " use YouCompleteMe instead (python-jedi)
let g:pymode_syntax_space_errors = 0  " using MyWhitespaceSetup
let g:pymode_trim_whitespaces = 0
let g:pymode_debug = 0
let g:pymode_rope = 0
"Setting for Jedi-Vim #######################################
autocmd FileType python setlocal completeopt-=preview
let g:jedi#auto_initialization = 0
let g:jedi#auto_vim_configuration = 0

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

