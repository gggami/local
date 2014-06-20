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
" wget https://raw.github.com/Cside/dotfiles/master/.vim/dict/perl.dict
"""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif

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

filetype plugin indent on
filetype indent on
"""""""""""""""""""""""""""""""""""""""""""""""""""

