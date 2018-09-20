set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8 " 保存時の文字コード
set fileencodings=ucs-boms,utf-8,euc-jp,cp932 " 読み込み時の文字コードの自動判別. 左側が優先される
set fileformats=unix,dos,mac " 改行コードの自動判別. 左側が優先される
set ambiwidth=double " □や○文字が崩れる問題を解決
syntax on
set number
set ruler
set title "set ryker
set background=dark
set tabstop=2 "2tab
set expandtab "tab -> half space
set shiftwidth=2  "autotab -> 2tab
set smartindent
set cursorline
set cursorcolumn
set showmatch
source $VIMRUNTIME/macros/matchit.vim " Vimの「%」を拡張する
set wildmenu " コマンドモードの補完
set laststatus=2
nnoremap j gj  " 行が折り返し表示されていた場合、行単位ではなく表示行単位でカーソルを移動する
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk
set incsearch " インクリメンタルサーチ. １文字入力毎に検索を行う
set ignorecase " 検索パターンに大文字小文字を区別しない
set smartcase " 検索パターンに大文字を含んでいたら大文字小文字を区別する
set hlsearch " 検索結果をハイライト

" ESCキー2度押しでハイライトの切り替え
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>

autocmd BufRead, BurNewFile *.vue setfiletype html

"colorscheme desert

highlight texSection ctermfg=yellow
highlight texDelimiter ctermfg=red
highlight texSpecialChar ctermfg=red
"highlight texMath ctermbg=darkmagenta
