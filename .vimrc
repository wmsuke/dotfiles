" -- neobundleの設定 -- "
set nocompatible
filetype plugin indent off

if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/app/dotfiles/vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

" Bundles:
NeoBundle 'Shougo/unite.vim'
NeoBundle 'The-NERD-tree'
NeoBundle 'The-NERD-Commenter'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

" https://sites.google.com/site/fudist/Home/vim-nihongo-ban/-vimrc-sample
""""""""""""""""""""""""""""""
" 挿入モード時、ステータスラインの色を変更
""""""""""""""""""""""""""""""
let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'

if has('syntax')
  augroup InsertHook
    autocmd!
    autocmd InsertEnter * call s:StatusLine('Enter')
    autocmd InsertLeave * call s:StatusLine('Leave')
  augroup END
endif

let s:slhlcmd = ''
function! s:StatusLine(mode)
  if a:mode == 'Enter'
    silent! let s:slhlcmd = 'highlight ' . s:GetHighlight('StatusLine')
    silent exec g:hi_insert
  else
    highlight clear StatusLine
    silent exec s:slhlcmd
  endif
endfunction

function! s:GetHighlight(hi)
  redir => hl
  exec 'highlight '.a:hi
  redir END
  let hl = substitute(hl, '[\r\n]', '', 'g')
  let hl = substitute(hl, 'xxx', '', '')
  return hl
endfunction
""""""""""""""""""""""""""""""

" -- 基本的な設定-- "

" 文字コードの指定
set enc=utf-8
set fenc=utf-8
set fencs=iso-2022-jp,utf-8,euc-jp,cp932

" -------
set tabstop=2 shiftwidth=2 softtabstop=2
set smarttab
set cursorline
set number
" 自動インデントはしない
set noautoindent

" スワップファイルは使わない
set noswapfile
" バックアップファイルのディレクトリを指定する
set backupdir=$HOME/.vimbackup
" undofileのバックアップディレクトリを指定する
set undodir=$HOME/.vimbackup

"タブの代わりに空白文字を指定する
set expandtab

"閉括弧が入力された時、対応する括弧を強調する
set showmatch

" 検索結果のハイライトをEsc連打でクリアする
nnoremap <ESC><ESC> :nohlsearch<CR>

" 途中改行をなくす
autocmd FileType text setlocal textwidth=0

"内容が変更されたら自動的に再読み込み
set autoread

"カッコを閉じたとき対応するカッコに一時的に移動
set nostartofline

"-------Search--------
""インクリメンタルサーチを有効にする
set incsearch

"大文字小文字を区別しない
"set ignorecase
"
""大文字で検索されたら対象を大文字限定にする
set smartcase

"行末まで検索したら行頭に戻る
"set wrapscan

" grep検索を設定する
set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
set grepprg=grep\ -nh

"
" golang
"
" :Fmt などで gofmt の代わりに goimports を使う
let g:gofmt_command = 'goimports'

" Go に付属の plugin と gocode を有効にする
set rtp^=${GOROOT}/misc/vim
set rtp^=${GOPATH}/src/github.com/nsf/gocode/vim

" 保存時に :Fmt する
au BufWritePre *.go Fmt
au BufNewFile,BufRead *.go set sw=4 noexpandtab ts=4
au FileType go compiler go
