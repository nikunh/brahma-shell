" START - Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
   echo "Installing Vundle.."
     echo ""
  silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
      let iCanHazVundle=0
  endif
  set rtp+=~/.vim/bundle/Vundle.vim/
  call vundle#rc()

  " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'Vundle/Vundle.vim' 
""vikube kubernetes administration
Plugin 'c9s/helper.vim'
Plugin 'c9s/treemenu.vim'
Plugin 'c9s/vikube.vim'
Plugin 'technosophos/vim-kubernetes-snippets'
"Chef autocomplete
Plugin 'vadv/vim-chef'
"Neobundle autocomplete plugins
"Plugin 'Shougo/neocomplcache'
"Plugin 'Shougo/neosnippet-snippets'
"Plugin 'Shougo/neocomplcache-snippets-complete'
Plugin 'Shougo/neocomplete.vim'

"vim undotree
Plugin 'mbbill/undotree'

"git related
Plugin 'gregsexton/gitv'
"Python related
Plugin 'davidhalter/jedi-vim'
"Vim colors
Plugin 'croaker/mustang-vim'
"Vim git integrations
Plugin 'tpope/vim-fugitive' "Gedit (and :Gsplit, :Gvsplit, :Gtabedit, ...)  - Help at https://github.com/tpope/vim-fugitive
Plugin 'airblade/vim-gitgutter' "Show git changed linesin currently open file  near line numbers in side status bar,stage/unstage etc - Help at https://github.com/airblade/vim-gitgutter

"Vim nerdtree plugins
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'low-ghost/nerdtree-fugitive'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'bling/vim-bufferline'
"Plugin 'ryanoasis/vim-devicons'
"Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'unkiwii/vim-nerdtree-sync'
Plugin 'ctrlpvim/ctrlp.vim'


"Open urls from VIM
Plugin 'tyru/open-browser.vim' "Snipmate and other snippets - works in addition to neo snippets above
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"Plugin 'msanders/snipmate.vim'
"Syntaxchekers
Plugin 'vim-syntastic/syntastic' "Formatting, Automatic line spacer :   :Tabularize /, - Help at https://raw.githubusercontent.com/godlygeek/tabular/master/doc/Tabular.txt
Plugin 'godlygeek/tabular'
Plugin 'gabrielelana/vim-markdown' "writer mode plugin, great while writting documents - Help at https://github.com/gabrielelana/vim-markdown
Plugin 'tmhedberg/matchit'
"Commenting lines automatically by language (toggle supported) - Help at https://github.com/tomtom/tcomment_vim
Plugin 'tomtom/tcomment_vim' "Grep, find, replace text in files by filetype, buffer open etc. - Help at https://github.com/vim-scripts/EasyGrep
Plugin 'vim-scripts/EasyGrep'
Plugin 'Shougo/unite.vim' "Has a lot of litereture read throughly before creating bindings - Help https://github.com/Shougo/unite.vim
Plugin 'vim-scripts/YankRing.vim' "Yank history for vim - Help at https://github.com/vim-scripts/YankRing.vim
"tab behaviour
Plugin 'ervandew/supertab'
"Auto insert closing braces and brackets etc. behaviour
Plugin 'raimondi/delimitmate'
"Puppet plugins
Plugin 'rodjek/vim-puppet'
Plugin 'majutsushi/tagbar' "<F8> :TagbarToggle tags support for current file
"Statusbar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


" Plugin 'vim-jira-complete'
" Plugin 'rafi/vim-unite-issue'
" Plugin 'mattn/webapi-vim'
" reassign '.' repeat to full blocks - https://github.com/tpope/vim-repeat

" " All of your Plugins must be added before the following line

if iCanHazVundle == 0
     echo "Installing Bundles, please ignore key map error messages"
       echo ""
    :PluginInstall
endif
" END - Setting up Vundle - the vim plugin bundler

let g:neocomplete#enable_at_startup = 1
set nocompatible              " be iMproved, required
filetype off                  " required


""""""""""""""""""""""""""""""""""""""""""""""
"Neosnippet vs snipmate conflict solution


""""""""""""""""""""""""""""""""""""""""""""""
"Nerdtree tab navigation
nmap <C-S-tab> :tabprevious<CR>
nmap <C-tab>   :tabnext<CR>

""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin on "from nerdtreecommenter plugin
filetype plugin indent on    " required
"set runtimepath^=~/.vim/bundle/ctrlp.vim

""""""""""""""""""""""""""""""""""""""""""""""
"ctrlp settings
let g:ctrlp_root_markers=['.prjroot']



""""""""""""""""""""""""""""""""""""""""""""""
"set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
"Always show statusline
set statusline+=%F
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

"ruby syntax checking with f9
autocmd FileType ruby map <F9> :w<CR>:!ruby -c %<CR>
autocmd FileType ruby,eruby set filetype=ruby.eruby.chef
" Plugin key-mappings.for neosnippets
"set complete=.,w,b,u,t,i,]

"let g:neocomplcache_enable_at_startup = 1
"let g:neocomplcache_enable_smart_case = 1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_snippets_dir = '~/.vim/snippets/'
"let g:neosnippet#enable_snipmate_compatibility = 1

" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Plugin key-mappings.
"imap <C-k>     <Plug>(neocomplcache_snippets_expand)
"smap <C-k>     <Plug>(neocomplcache_snippets_expand)
"inoremap <expr><C-g>     neocomplcache#undo_completion()
"inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.

 "imap <expr><TAB>
  "\ pumvisible() ? "\<C-n>" :
  "\ neosnippet#expandable_or_jumpable() ?
  "\    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

 " For conceal markers.
" if has('conceal')
"   set conceallevel=2 concealcursor=niv
"   endif
""""""""""""""""""""""""""""""""""""""""""""""""""
"Ultrasnip behaviour config
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


""""""""""""""""""""""""""""""""""""""""""""""""""
"Tagbar settings
nmap <F8> :TagbarToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
"gabrielelana/vim-markdown settings
let g:markdown_include_jekyll_support = 0


""""""""""""""""""""""""""""""""""""""""""""""""""
"Jedi vim python settings
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"




""""""""""""""""""""""""""""""""""""""""""""""""""

"Nerd tree settings

"let NERDTreeMapOpenInTab='\r'
"let NERDTreeMapOpenInTab='<ENTER>'
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_no_startup_for_diff=1
let g:nerdtree_tabs_open_on_new_tab=1
let g:nerdtree_tabs_meaningful_tab_names=1
let g:nerdtree_tabs_autoclose=1
let g:NERDTreeChDirMode = 2
let NERDTreeShowHidden=1
let NERDTreeDirArrows=1
"Start hidden
"let g:NERDTreeHijackNetrw=0

" map <C-n> :NERDTreeToggle<CR>
nmap <silent> <leader>t :NERDTreeToggle $MYVIMRC<CR>
"close vim if only window left open is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"Nerdtree git plugin maps
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
"Nerdtreegitfugitive shortucts
"(a)dd - Git add without opening the file
"(w)rite - open file and Gwrite
"(l)og - open file and go to fugitive log window
"(d)iff - open diff or merge conflict tool
"(o)pen a version from another branch
"(r)emove - open buffer then Gremove it and destroy the buffer
"(b)lame - open file and go to Gblame quickfix window
"(g)rep - search this file with normal grep
"Ggr(e)p - search the full repo with git grep
"(s)tatus - jump to file in fugitive status window

"Nerdtree devicons
"set guifont=DroidSansMono\ Nerd\ Font\ 11
"set encoding=utf8
"set guifont=Droid\ Sans\ Mono\ for\ Powerline:h11
"set guifont=DroidSansMono\ Nerd\ Font\ Mono:h11
"set guifont=PowerlineSymbols:h11
"let g:airline_powerline_fonts = 1
"PowerlineSymbols.otf: PowerlineSymbols:style=Medium


"""""""""""""""""""""""""""""""""""""""""""""""""""""""

"vim undo settings
" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = "~/.vim"
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs
    call system('mkdir ' . vimDir)
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile
    set undolevels=1000         " How many undos
    set undoreload=10000        " number of lines to save for undo
endif
nnoremap <F5> :UndotreeToggle<CR>
"""""""""""""""""""""""""""""
"Vim jira plugin configs
" vim unite issue config: Uncomment below lines
"nmap <silent> <leader>ta :Unite issue:jira<CR>
"let g:jira_url = 'http://changeme.atlassian.net/'
"let g:jira_username = 'changeme'
"let g:jira_password = 'changeme'
"let g:unite_source_issue_jira_priority_table = {
"  \ 10000:'10000', 1: '1', 2: '2', 3: '3', 4: '4', 5: '5' }

"let g:unite_source_issue_jira_status_table = {
"  \ 1: 'Open| ', 3: 'In Progress| ', 4: 'To Do| ', 5: 'Done| ', 6: 'Aproved| ',
"  \ 10000: 'To Do| ', 10001: 'staged', 10002: 'waiting',
"  \ 10003: 'deployed', 10004: 'pending', 10008: 'review' }

"let g:unite_source_issue_jira_type_table = {
"  \ 1: 'bug', 2: 'feature', 3: 'task', 4: 'change', 5: 'sub-task',
"  \ 6: 'epic', 7: 'story', 8: 'system', 9: 'sub-bug' }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" font awesome fonts
"```vimscript
let g:Powerline_symbols = 'fancy'
let g:Powerline_dividers_override = [[0xe0b0], [0xe0b1], [0xe0b2], [0xe0b3]]
let g:Powerline_symbols_override = {
  \ 'BRANCH': [0xe238],
  \ 'RO'    : [0xe0a2],
  \ 'FT'    : [0xe1f6],
  \ 'LINE'  : [0xe0a1],
\ }
"```

"yankring config
nnoremap <silent> <F11> :YRShow<CR>
"""""""""""""""""""""""""""""""""""

"vim-airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_right_sep='<'
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_iminsert=0
let g:airline_inactive_collapse=1
let g:airline_powerline_fonts=0
let g:airline_mode_map = {
           \ '__' : '-',
           \ 'n'  : 'N',
           \ 'i'  : 'I',
           \ 'R'  : 'R',
           \ 'c'  : 'C',
           \ 'v'  : 'V',
           \ 'V'  : 'V',
           \ '^V' : 'V',
           \ 's'  : 'S',
           \ 'S'  : 'S',
           \ '^S' : 'S',
           \ }


""""""""""""""""""""""""""""""""""""""""""""""

" Highlight current cursor line
" hi  CursorLine     guibg=#222222 gui=none
hi LineNr         ctermfg=DarkMagenta guifg=#2b506e guibg=#000000 
set cursorline
if v:version > 700
     set cursorline
      hi CursorLine ctermbg = Black " guibg = #F4F5FA
  endif


""""""""""""""""""""""""""""""""""


"Vim set configuration

set foldmethod=indent
set foldcolumn=5
set foldnestmax=3
set viewoptions=cursor,folds,slash,unix 
set hidden
set nowrap
set tabstop=4
set backspace=indent,eol,start
set autoindent
set copyindent 
set number
set shiftwidth=4
set shiftround
set showmatch
set ignorecase
set smartcase
set smarttab
set hlsearch
set incsearch
set history=10000
set undolevels=10000
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
set visualbell
set noerrorbells
set nobackup
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set pastetoggle=<F2>
set mouse=a
set expandtab
set nocompatible
set smarttab
set autoindent
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_enable_signs=1
let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:syntastic_auto_loc_list=1
let g:vim_markdown_folding_disabled=1
let g:syntastic_check_on_wq = 1
let mapleader=","

"To enable Just puppet-lint and disable the parser uncomment next line
"let g:syntastic_puppet_checkers=['puppetlint']
"
""""""""""""""""""""""""""""""""""""

"Vim key bindings

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nmap <silent> <leader>sn :set invnumber $MYVIMRC<CR>
cmap w!! w !sudo tee % >/dev/null
nmap <silent> ,/ :nohlsearch<CR>
cmap w!! w !sudo tee % >/dev/null

"""""""""""""""""""""""""""""""""""""""""


"augroup vimrc
  "au BufReadPre * setlocal foldmethod=syntax
  "au BufWinEnter * if &fdm == 'syntax' | setlocal foldmethod=manual | endif
"augroup END
" let g:skipview_files = ['*\.vim'] 
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" set background=dark
" -new http://nvie.com/posts/how-i-boosted-my-vim/

"Pathogen configuration

"call pathogen#infect()
"execute pathogen#infect()
"syntax on
"filetype plugin indent on
"call pathogen#helptags()
" call pathogen#runtime_append_all_bundles()
"call pathogen#incubate()
"""""""""""""""""""""""""""""""""""""""""""""""""


if has('autocmd')
    autocmd filetype python set expandtab
    autocmd filetype html,xml set listchars-=tab:>.
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal! g'\"" | endif
endif

"if &t_Co >= 256 || has("gui_running")
"    colorscheme mustang
"endif
syntax on
color mustang
"if &t_Co > 2 || has("gui_running")
"     switch syntax highlighting on, when the terminal has colors
    "syntax on
"endif
"""""""""""""""""""""""""""""

"Mouse settings
let b:loaded_toggle_mouse_plugin = 1
if exists("b:loaded_toggle_mouse_plugin")
    finish
endif

fun! s:ToggleMouse()
    if !exists("s:old_mouse")
        let s:old_mouse = "a"
    endif

    if &mouse == ""
        let &mouse = s:old_mouse
        echo "Mouse is for Vim (" . &mouse . ")"
    else
        let s:old_mouse = &mouse
        let &mouse=""
        echo "Mouse is for terminal"
    endif
endfunction

" Add mappings, unless the user didn't want this.
" The default mapping is registered under to <F12> by default, unless the user
" remapped it already (or a mapping exists already for <F12>)
if !exists("no_plugin_maps") && !exists("no_toggle_mouse_maps")
    if !hasmapto('<SID>ToggleMouse()')
        noremap <F12> :call <SID>ToggleMouse()<CR>
        inoremap <F12> <Esc>:call <SID>ToggleMouse()<CR>a
    endif
endif

""""""""""""""""""""""""""""""""""







filetype indent plugin on




"Neocomplete settings
 if has("wildmenu") 
                set wildmenu wildmode=longest:full,full 
        endif 
        if !has("gui_running") 
                runtime! menu.vim 
                set wildcharm=<C-]> 
                map <C-Z> :emenu <C-]> 
                map! <C-Z> <C-O>:emenu <C-]> 
        endif 
