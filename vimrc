" syntax on

set number

set ruler

"set ryker

set title

set background=dark

"2tab
set tabstop=4

"tab -> half space
set expandtab

"autotab -> 4tab
set shiftwidth=4
set smartindent

"set list

set cursorline
set cursorcolumn

set showmatch

set laststatus=2

set incsearch " インクリメンタルサーチ. １文字入力毎に検索を行う
set ignorecase " 検索パターンに大文字小文字を区別しない
set smartcase " 検索パターンに大文字を含んでいたら大文字小文字を区別する
set hlsearch " 検索結果をハイライト

" ESCキー2度押しでハイライトの切り替え
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>


"colorscheme desert

highlight texSection ctermfg=yellow
highlight texDelimiter ctermfg=red
highlight texSpecialChar ctermfg=red
"highlight texMath ctermbg=darkmagenta
