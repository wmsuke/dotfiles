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
" 検索時にファイルの最後まで行ったら最初に戻る (nowrapscan:戻らない) 
set wrapscan

"バックアップファイルのディレクトリを指定する
set backupdir=$HOME/.vim/vimbackup

"スワップファイル用のディレクトリを指定する
set directory=$HOME/.vim/vimbackup

"タブの代わりに空白文字を指定する
set expandtab

"インクリメンタルサーチを行う
set incsearch

"閉括弧が入力された時、対応する括弧を強調する
set showmatch

" grep検索を設定する
set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
set grepprg=grep\ -nh

" 検索結果のハイライトをEsc連打でクリアする
nnoremap <ESC><ESC> :nohlsearch<CR>

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
