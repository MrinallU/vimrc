syntax on
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
let g:rainbow_active = 1
set ambiwidth=double
set clipboard=unnamed
set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar
set number
set guioptions-=L
:let mapleader = ","
nmap <leader>so :source $HOME\_vimrc<CR>
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
set backspace=indent,eol,start
set linespace=2
set pythonthreehome=C:\Python36-32
set pythonthreedll=C:\Python36-32\python36.dll
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
let g:airline_theme                       = 'one'
let g:airline_powerline_fonts             = 1
let g:airline#extensions#tabline#enabled  = 1
let g:airline#extensions#tabline#fnamemod = ':t'


" --- Git tools ---
" Gitgutter settings
let g:gitgutter_max_signs             = 5000
let g:gitgutter_sign_added            = '+'

let g:gitgutter_sign_removed          = '_'

let g:gitgutter_map_keys              = 0
let g:gitgutter_diff_args             = '--ignore-space-at-eol'

nmap <Leader>j <Plug>(GitGutterNextHunk)zz
nmap <Leader>k <Plug>(GitGutterPrevHunk)zz
nnoremap <silent> <C-g> :call <SID>ToggleGGPrev()<CR>zz
nnoremap <Leader>gs :GitGutterStageHunk<CR>
nnoremap <Leader>gu :GitGutterUndoHunk<CR>

" Fugitive settings
nnoremap <C-s> :call <SID>ToggleGstatus()<CR>
nnoremap <Leader>gv :Gvdiffsplit<CR>:windo set wrap<CR>
nnoremap <Leader>gh :Gvdiffsplit HEAD<CR>:windo set wrap<CR>
nnoremap <Leader>gb :Gblame<CR>

" Searching for text added or removed by a commit
nnoremap <Leader>gg :call <SID>GrepWrapper('Glog', '-i -G', '--')<CR>

" GV settings
nnoremap <silent> <Leader>gz :call <SID>PreventGV()<CR>
vnoremap <silent> <Leader>gz :call <SID>PreventGV()<CR>

call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
" Colorscheme
Plug 'francoiscabrol/ranger.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'chriskempson/base16-vim'
Plug 'frazrepo/vim-rainbow'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'valloric/vim-indent-guides'
" Multiple Plug commands can be written in a single line using | separators
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'universal-ctags/ctags'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'majutsushi/tagbar'
Plug 'rhysd/vim-clang-format'
":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'godlygeek/tabular'
Plug 'jiangmiao/auto-pairs'
" Initialize plugin system
Plug 'dense-analysis/ale'
Plug 'rakr/vim-one'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'mxw/vim-jsx'
Plug 'rhysd/vim-clang-format'
Plug 'severin-lemaignan/vim-minimap'
Plug 'vim-airline/vim-airline-themes'
Plug 'koron/minimap-vim'
Plug 'tomasr/molokai'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'joshdick/onedark.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" Git tools
	Plug 'airblade/vim-gitgutter'
	Plug 'tpope/vim-fugitive'
	Plug 'junegunn/gv.vim'

	" Sessions
	Plug 'xolox/vim-session'
	Plug 'xolox/vim-misc'

	" Tools
	Plug 'scrooloose/nerdcommenter'
	Plug 'scrooloose/nerdtree'
	Plug 'valloric/listtoggle'
	Plug 'majutsushi/tagbar'
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'mbbill/undotree'
	Plug 'dense-analysis/ale'

	" Deoplete, specific for Vim8
	if !has("nvim")
		Plug 'roxma/nvim-yarp'
		Plug 'roxma/vim-hug-neovim-rpc'
	endif

	" Autocomplete
	Plug 'Shougo/deoplete.nvim', { 'commit': '17ffeb9' }
	Plug 'Shougo/neosnippet.vim', { 'commit': '037b7a7' }
	Plug 'Shougo/neosnippet-snippets'
	Plug 'Shougo/context_filetype.vim'
	Plug 'ervandew/supertab'

	" C/C++ support
	Plug 'deoplete-plugins/deoplete-clang', { 'commit': '30f17cb' }

	" Go support
	Plug 'fatih/vim-go', { 'tag': 'v1.19' }
	Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
	Plug 'deoplete-plugins/deoplete-go', { 'commit': 'fa73f06'}

	" Perl support
	Plug 'c9s/perlomni.vim'

	" Python support
	Plug 'deoplete-plugins/deoplete-jedi', { 'commit': '46121d9' }

	" Ruby support
	Plug 'vim-ruby/vim-ruby'
	Plug 'tpope/vim-rails'
	Plug 'tpope/vim-endwise'
	Plug 'tpope/vim-liquid'

	" PHP support
	Plug 'shawncplus/phpcomplete.vim'

	" Haskell support
	Plug 'eagletmt/neco-ghc'

	" Rust support
	Plug 'racer-rust/vim-racer'

	" Zsh support
	Plug 'deoplete-plugins/deoplete-zsh', { 'commit': '12141ad' }

	" JavaScript support
	Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
	Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
	Plug 'othree/jspc.vim'
	Plug 'maksimr/vim-jsbeautify'

	" VimL support
	Plug 'Shougo/neco-vim', { 'commit' : '4c0203b' }

	" Additional syntax files
	Plug 'othree/html5.vim'
	Plug 'vim-language-dept/css-syntax.vim'
	Plug 'hail2u/vim-css3-syntax'
	Plug 'pangloss/vim-javascript'
	Plug 'Shougo/neco-syntax', { 'commit': '98cba4a' }
	Plug 'mboughaba/i3config.vim'
	Plug 'aklt/plantuml-syntax'
	Plug 'gerardbm/asy.vim'
	Plug 'gerardbm/eukleides.vim'

	" Edition
	Plug 'junegunn/vim-easy-align'
	Plug 'godlygeek/tabular'
	Plug 'jiangmiao/auto-pairs'
	Plug 'alvan/vim-closetag'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-repeat'
	Plug 'tpope/vim-capslock'
	Plug 'wellle/targets.vim'
	Plug 'christoomey/vim-sort-motion'
	Plug 'terryma/vim-expand-region'
	Plug 'Valloric/MatchTagAlways'
	Plug 'FooSoft/vim-argwrap'
	Plug 'gerardbm/vim-md-headings'
	Plug 'matze/vim-move'

	" Misc
	Plug 'christoomey/vim-tmux-navigator'
	Plug 'tpope/vim-characterize'
	Plug 'tyru/open-browser.vim'
	Plug 'junegunn/goyo.vim'
	Plug 'mattn/webapi-vim'
	Plug 'mattn/emmet-vim'
	Plug 'vimwiki/vimwiki', { 'branch': 'master' }

	" Color schemes
	Plug 'gerardbm/vim-atomic'
	Plug 'Yggdroot/indentLine'
call plug#end()

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
exec "w"
if &filetype == 'c'
exec "!gcc % -o %<"
exec "!time ./%<"
elseif &filetype == 'cpp'
exec "!g++ % -o %<"
exec "!time ./%<"
elseif &filetype == 'java'
exec "!javac %"
exec "!java -cp %:p:h %:t:r"
elseif &filetype == 'sh'
exec "!time bash %"
elseif &filetype == 'python'
exec "!time python2.7 %"
elseif &filetype == 'html'
exec "!firefox % &"
elseif &filetype == 'go'
exec "!go build %<"
exec "!time go run %"
elseif &filetype == 'mkd'
exec "!~/.vim/markdown.pl % > %.html &"
exec "!firefox %.html &"
endif
endfunc


let g:ranger_replace_netrw = 1
let g:indentLine_setColors = 0
set guifont=CaskaydiaCove_Nerd_Font:h10
let g:airline#extensions#tabline#enabled = 1
nmap <F8> :TagbarToggle<CR>
nmap <F7> :NERDTreeToggle<CR>
let g:rehash256 = 1
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlo_cmd = 'CtrlPBuffer'
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif



" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
" Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
nnoremap <silent> <M-F12> :BufExplorer<CR>
nnoremap <silent> <F12> :bn<CR>
nnoremap <silent> <S-F12> :bp<CR>
set noshowmode
colorscheme base16-dracula
set background=dark " for the dark version
let g:one_allow_italics = 1 " I love italic for comments
set autoindent
let g:startify_custom_header = [
\ '  __     ___             _____ _____ ',
\ '  \ \   / (_)_ __ ___   |___  |___ / ',
\ '   \ \ / /| | ''_ ` _ \     / /  |_ \ ',
\ '    \ V / | | | | | | |   / /_ ___) |',
\ '     \_/  |_|_| |_| |_|  /_/(_)____/ ',
\ '',
\ '',
\ ]
colorscheme one
let g:indentLine_setColors = 0
let g:indentLine_char = 'c'
let g:indentLine_char_list = ['|']
"get rid of [  ] around icons in NerdTree
syntax enable
if exists("g:loaded_webdevicons")
	call webdevicons#refresh()
endif
autocmd FileType nerdtree setlocal nolist
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '

let g:prettier#config#trailing_comma = 'none'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '!'
let g:syntastic_style_warning_symbol = '💩'
highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn
