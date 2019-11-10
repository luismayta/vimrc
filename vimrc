"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
"                                                                              "
"                       __   _ _ _ __ ___  _ __ ___                            "
"                       \ \ / / | '_ ` _ \| '__/ __|                           "
"                        \ V /| | | | | | | | | (__                            "
"                         \_/ |_|_| |_| |_|_|  \___|                           "
"                                                                              "
"                                                                              "
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

" --- Vundle Configuration
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'               " let Vundle manage Vundle, required

    " Plugins for colour schemes.
    "-------------------=== Colour/Schemes ===-------------
    Plugin 'altercation/vim-colors-solarized'
    Plugin 'joshdick/onedark.vim'
    Plugin 'arcticicestudio/nord-vim'           " Colorschemes
    Plugin 'rakr/vim-one'

    "-------------------=== Code/Project navigation ===-------------
    Plugin 'scrooloose/nerdtree'                " Project and file navigation
    Plugin 'majutsushi/tagbar'                  " Class/module browser
    Plugin 'kien/ctrlp.vim'                     " Fast transitions on project files

    "-------------------=== Other ===-------------------------------
    Plugin 'bling/vim-airline'                  " Lean & mean status/tabline for vim
    Plugin 'vim-airline/vim-airline-themes'     " Themes for airline
    Plugin 'Lokaltog/powerline'                 " Powerline fonts plugin
    Plugin 'fisadev/FixedTaskList.vim'          " Pending tasks list
    Plugin 'rosenfeld/conque-term'              " Consoles as buffers
    Plugin 'tpope/vim-surround'                 " Parentheses, brackets, quotes, XML tags, and more
    Plugin 'wakatime/vim-wakatime'              " Wakatime statics
    Plugin 'editorconfig/editorconfig-vim'      " Editorconfig
    Plugin 'christoomey/vim-tmux-navigator' " Seamless navigation between tmux/vim splits.
    Plugin 'tpope/vim-fugitive'  " Git support.

"-------------------=== Snippets support ===--------------------
    Plugin 'garbas/vim-snipmate'                " Snippets manager
    Plugin 'MarcWeber/vim-addon-mw-utils'       " dependencies #1
    Plugin 'tomtom/tlib_vim'                    " dependencies #2
    Plugin 'honza/vim-snippets'                 " snippets repo

    "-------------------=== Languages support ===-------------------
    Plugin 'tpope/vim-commentary'               " Comment stuff out
    Plugin 'mitsuhiko/vim-sparkup'              " Sparkup(XML/jinja/htlm-django/etc.) support
    Plugin 'Rykka/riv.vim'                      " ReStructuredText plugin
    Plugin 'Valloric/YouCompleteMe'             " Autocomplete plugin

    "-------------------=== Python  ===-----------------------------
    Plugin 'klen/python-mode'                   " Python mode (docs, refactor, lints...)
    Plugin 'scrooloose/syntastic'               " Syntax checking plugin for Vim

    "-------------------=== Go  ===-----------------------------
    Plugin 'fatih/vim-go'        " Brutal Golang features

    " Install Plugins
    Plugin 'heavenshell/vim-jsdoc' " JSDoc support for Vim.
    Plugin 'w0rp/ale'            " Asynchronous Linting Engine.
    Plugin 'sjl/vitality.vim'    " Nicer cursor, tmux interactions.
    Plugin 'jszakmeister/vim-togglecursor' " Toggle between line and block cursor when supported.
    Plugin 'tpope/vim-repeat'    " Allow the 'dot' for repeating even for plugins.
    Plugin 'mileszs/ack.vim'     " Ack support.
    Plugin 'rizzatti/dash.vim'   " Dash support.
    Plugin 'dhruvasagar/vim-table-mode' " Easily format tables on the fly with vim.

    "-------------------=== Plugins Languages  ===-----------------------------
    Plugin 'jparise/vim-graphql'      " GraphQL
    Plugin 'PProvost/vim-ps1'         " PowerShell
    Plugin 'mxw/vim-jsx'              " JSX support.
    Plugin 'pangloss/vim-javascript'  " Better syntax and indenting for js.
    Plugin 'elzr/vim-json'            " As above.
    Plugin 'othree/html5.vim'         " HTML + SVG
    Plugin 'hashivim/vim-terraform'   " Adds suppport for terraform files (in fact HCP etc)
    Plugin 'godlygeek/tabular'        " Line up text! Needed by vim-markdown.
    Plugin 'mzlogin/vim-markdown-toc' " Build a TOC for markdown.
    Plugin 'leafgarland/typescript-vim' "TypeScript

    " Support focus events, even when running in tmux.
    Plugin 'tmux-plugins/vim-tmux-focus-events'

    " Lots of mappings such as [<Space> ]<Space>.
    Plugin 'tpope/vim-unimpaired'

    " Nice splitting / joining.
    Plugin 'AndrewRadev/splitjoin.vim'

    " Highlight the yanked text briefly.
    " Plugin 'machakann/vim-highlightedyank'

    " NERD Commenter plugin.
    Plugin 'scrooloose/nerdcommenter'

    " all of your Plugins must be added before the following line
call vundle#end()            " required

filetype on
filetype plugin indent on    " required
filetype plugin on

"=====================================================
"" General settings
"=====================================================

syntax enable                               " syntax highlight
set t_Co=256                                " set 256 colors

"" Break bad habits - no arrow keys!
"=====================================================
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
"=====================================================
"" Riv.vim settings
"=====================================================
let g:riv_disable_folding=1

set tabstop=4       " number of visual spaces per TAB
set shiftwidth=4                            " shift lines by 4 spaces
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set colorcolumn=80      " highlight column 80
set ruler

"=====================================================
"" TagBar settings
"=====================================================
let g:tagbar_autofocus=0
let g:tagbar_width=42
autocmd BufEnter *.py :call tagbar#autoopen(0)
autocmd BufWinLeave *.py :TagbarClose

"=====================================================
"" SnipMate settings
"=====================================================
let g:snippets_dir='$HOME/.vim/vim-snippets/snippets'

"=====================================================
"" Search settings
"=====================================================
set incsearch	                            " incremental search
set hlsearch	                            " highlight search results

" Make backspace work in a sane fashion.
set backspace=indent,eol,start

" Pane configuration.

    " More natural (to me) splitting.
    set splitbelow
    set splitright

" Colour and terminal configuration.

    " If we have 24bit colour support, use it. Without this line we seem to get
    " the right colours *almost* - except the background!
    if (has("termguicolors"))
        set termguicolors
    endif

" Theme settings

    " Syntax highlighting on, dark background, onedark theme.
    syntax on
    set background=dark
    colorscheme onedark

" Enable the mouse. Also enable when in tmux.
set mouse=a
set ttymouse=xterm2

" Use the system clipboard.
set clipboard=unnamed

" Enable saving backups (swapfiles) and store vim backups in a temp dir
" rather than the local dir.
set swapfile
set dir=~/tmp

" Wildmenu settings, provides much nicer tab completion for commands.
set wildmenu

" Plugin: ctrlp configuration.

    " Ignore some common files for ctrlp, also ignore gitignore.
    let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

    let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

    " Now that we have common files ignored, enable searching dotfiles.
    let g:ctrlp_show_hidden = 1

"=====================================================
"" NERDTree settings
"=====================================================

" Toggle NerdTree with Ctrl+N
map <C-n> :NERDTreeToggle<CR>

" Open NerdTree automatically on startup.
" Also focus the *previous* window, i.e. the main window!
" autocmd vimenter * NERDTree | wincmd p

let NERDTreeShowHidden=1 " Show or hide hidden files.

let NERDTreeWinSize=40

" But still ignore some normally not needed files.
let g:NERDTreeIgnore=['\.git$[[dir]]', 'node_modules$[[dir]]', '\.nyc_output$[[dir]]', '\.pyc$', '\.pyo$', '__pycache__$']

" Show the current file in NERDTree.
map <leader>t :NERDTreeFind<cr>

"=====================================================
"" AirLine settings
"=====================================================

let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1

"=====================================================
"" Language Settings
"=====================================================

au FileType * set fo-=c fo-=r fo-=o sw=4 sts=4 et " All languages - no autocommenting on newlines, 4 spaces soft tabs + expand

" Language specific indentation.
au FileType html           setl sw=2 sts=2 et
au FileType javascript     setl sw=2 sts=2 et
au FileType javascript.jsx setl sw=2 sts=2 et
au FileType typescript     setl sw=2 sts=2 et
au FileType json           setl sw=2 sts=2 et
au FileType ruby           setl sw=2 sts=2 et
au FileType yaml           setl sw=2 sts=2 et
au FileType terraform      setl sw=2 sts=2 et
au FileType make           set noexpandtab shiftwidth=8 softtabstop=0 " makefiles must use tabs

"=====================================================
"" Spell-checking settings
"=====================================================

" Keep the spellfile in the homedir. This will be a symlink to the dotfiles
" version of the spellfile.
set spellfile=$HOME/.vim/vim-spell-en.utf-8.add

" Spell check markdown and git commit messages.
autocmd FileType markdown setlocal spell
autocmd FileType gitcommit setlocal spell

" For filetypes with spellcheck available, we'll also support auto-complete.
set complete+=kspell

" Don't count acronyms / abbreviations as spelling errors
" (all upper-case letters, at least three characters)
" Also will not count acronym with 's' at the end a spelling error
" Also will not count numbers that are part of this
" Recognizes the following as correct:
au BufNewFile,BufRead syn match AcronymNoSpell '\<\(\u\|\d\)\{3,}s\?\>' contains=@NoSpell
au BufNewFile,BufRead syn match UrlNoSpell '\w\+:\/\/[^[:space:]]\+' contains=@NoSpell

"=====================================================
"" JavaScript Language Settings
"=====================================================

" Support JSX syntax highlighting in *.js, not just *.jsx.
let g:jsx_ext_required = 0

" Disable syntax concealing for json files.
let g:vim_json_syntax_conceal = 0

"=====================================================
"" Ruby Language Settings
"=====================================================

" 'Fastlane' file types are ruby files.
au BufNewFile,BufRead Appfile set ft=ruby
au BufNewFile,BufRead Deliverfile set ft=ruby
au BufNewFile,BufRead Fastfile set ft=ruby
au BufNewFile,BufRead Gymfile set ft=ruby
au BufNewFile,BufRead Matchfile set ft=ruby
au BufNewFile,BufRead Snapfile set ft=ruby
au BufNewFile,BufRead Scanfile set ft=ruby

"=====================================================
"" Go Language Settings
"=====================================================

" Lots of syntax highlighting!
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

" Show type info.
" let g:go_auto_type_info = 1

"=====================================================
"" Python settings
"=====================================================

" python executables for different plugins
let g:pymode_python='python'
let g:syntastic_python_python_exec='python'

" rope
let g:pymode_rope=0
let g:pymode_rope_completion=0
let g:pymode_rope_complete_on_dot=0
let g:pymode_rope_auto_project=0
let g:pymode_rope_enable_autoimport=0
let g:pymode_rope_autoimport_generate=0
let g:pymode_rope_guess_project=0

" documentation
let g:pymode_doc=0
let g:pymode_doc_bind='K'

" lints
let g:pymode_lint=0

" virtualenv
let g:pymode_virtualenv=1

" breakpoints
let g:pymode_breakpoint=1
let g:pymode_breakpoint_key='<leader>b'

" syntax highlight
let g:pymode_syntax=1
let g:pymode_syntax_slow_sync=1
let g:pymode_syntax_all=1
let g:pymode_syntax_print_as_function=g:pymode_syntax_all
let g:pymode_syntax_highlight_async_await=g:pymode_syntax_all
let g:pymode_syntax_highlight_equal_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_stars_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_self=g:pymode_syntax_all
let g:pymode_syntax_indent_errors=g:pymode_syntax_all
let g:pymode_syntax_string_formatting=g:pymode_syntax_all
let g:pymode_syntax_space_errors=g:pymode_syntax_all
let g:pymode_syntax_string_format=g:pymode_syntax_all
let g:pymode_syntax_string_templates=g:pymode_syntax_all
let g:pymode_syntax_doctests=g:pymode_syntax_all
let g:pymode_syntax_builtin_objs=g:pymode_syntax_all
let g:pymode_syntax_builtin_types=g:pymode_syntax_all
let g:pymode_syntax_highlight_exceptions=g:pymode_syntax_all
let g:pymode_syntax_docstrings=g:pymode_syntax_all

" highlight 'long' lines (>= 80 symbols) in python files
augroup vimrc_autocmds
    autocmd!
    autocmd FileType python,rst,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python,rst,c,cpp match Excess /\%80v.*/
    autocmd FileType python,rst,c,cpp set nowrap
    autocmd FileType python,rst,c,cpp set colorcolumn=80
augroup END

" code folding
let g:pymode_folding=0

" pep8 indents
let g:pymode_indent=1

" code running
let g:pymode_run=1
let g:pymode_run_bind='<F5>'

" syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:syntastic_check_on_wq=0
let g:syntastic_aggregate_errors=1
let g:syntastic_loc_list_height=5
let g:syntastic_error_symbol='X'
let g:syntastic_style_error_symbol='X'
let g:syntastic_warning_symbol='x'
let g:syntastic_style_warning_symbol='x'
let g:syntastic_python_checkers=['flake8', 'pydocstyle', 'python']

" YouCompleteMe
set completeopt-=preview

let g:ycm_global_ycm_extra_conf='~/.vim/ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0

nmap <leader>g :YcmCompleter GoTo<CR>
nmap <leader>d :YcmCompleter GoToDefinition<CR>

"=====================================================
"" Markdown Language Settings
"=====================================================

" I don't find the folding particularly useful, turn it off.
let g:vim_markdown_folding_disabled = 1

" vim-table-mode - use Markdown table.
let g:table_mode_corner='|'

"=====================================================
"" Custom Commands
"=====================================================

" Refresh nerdtree and ctrlp.
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>:CtrlPClearCache<cr>

" Ctrl+c exits in the same way as Esc (including sending InsertLeave)
:imap jj <Esc>
:ino <C-c> <Esc>

" Line number stuff.
set number
set relativenumber
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

:au FocusLost * :set norelativenumber
:au FocusGained * :set relativenumber
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeavE * :set relativenumber
nnoremap <Leader>n :call NumberToggle()<cr>

" Map leader s to save.
nnoremap <leader>s :w<cr>
inoremap <leader>s <C-c>:w<cr>

" Splitjoin Plugin
" Remember it like this: 's' for 'split', j splits down, k up.
nmap sj :SplitjoinSplit<cr>
nmap sk :SplitjoinJoin<cr>

" Add a space after each comment delimiter.
let g:NERDSpaceDelims = 1

noremap <leader><leader> :tabnew %<cr>

" When in insert mode, highlight the current line.
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

"=====================================================
"" The Silver Searcher (ag) Configuration.
"=====================================================

" Is 'ag' available?
if executable('ag')
    " For grep, use ag.
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore.
    " Fast enough we don't even need to cache.
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    let g:ctrlp_use_caching = 0
endif

"=====================================================
"" Ack Plugin Configuration.
"=====================================================

" Use ag, rather than ack (sorry, I need my .gitignore to be used...).
let g:ackprg = 'ag --nogroup --nocolor --column'

" Leader a to quickly get ready to ack.
:noremap <Leader>a :Ack

"=====================================================
"" Dash Configuration.
"=====================================================

" Leader d to open in Dash.
:nmap <silent> <leader>d <Plug>DashSearch

" Use persistent undo.
if !isdirectory($HOME."/.vim/undo")
    call mkdir($HOME."/.vim/undo", "", 0700)
endif
set undodir=$HOME/.vim/undo
set undofile

" Enable highlighted yank on earlier versions of vim.
" if !exists('##TextYankPost')
"   map y <Plug>(highlightedyank)
" endif
" let g:highlightedyank_highlight_duration = 100
" let g:highlightedyank_highlight_duration = 100
