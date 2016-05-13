source ${HOME}/.vimrc_common


"""""""""""""""""""""""""""""""""""""""""""""""""""
" 1.
" mkdir -p ~/.vim/bundle
" git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
" git clone https://github.com/Shougo/vimproc ~/.vim/bundle/vimproc
" cd ~/.vim/bundle/vimproc && make
" 
" 2. .vimrc
" 
" 3. :NeoBundleInstall
"
" 4. dictionary
" mkdir ~/.vim/dict
" cd ~/.vim/dict
" curl -L -O https://raw.githubusercontent.com/Cside/dotfiles/master/.vim/dict/perl.dict
"""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off

set runtimepath+=~/.vim/bundle/neobundle.vim
call neobundle#begin(expand('~/.vim/bundle/'))

"if has('vim_starting')
"  set runtimepath+=~/.vim/bundle/neobundle.vim
  NeoBundleFetch 'Shougo/neobundle.vim'
"endif

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'petdance/vim-perl'
NeoBundle 'hotchpotch/perldoc-vim'
NeoBundle 'thinca/vim-quickrun'

call neobundle#end()

filetype plugin on
"filetype indent on
"""""""""""""""""""""""""""""""""""""""""""""""""""

"autocmd BufRead,BufNewFile *.mkd  setfiletype markdown
"#autocmd BufRead,BufNewFile *.md  setfiletype markdown
" md as markdown, instead of modula2
autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown

