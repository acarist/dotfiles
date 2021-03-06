function! DoRemote(arg)
  if has('nvim')
    UpdateRemotePlugins
  endif
endfunction

if !has('nvim')
  call plug#begin('~/.config/nvim/plugged_vim')
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
  Plug 'tpope/vim-sensible'
  Plug 'sjl/vitality.vim'
else
  call plug#begin('~/.config/nvim/plugged')
endif

" programming
Plug 'benekastah/neomake'
Plug 'tpope/vim-fugitive'
Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
Plug 'Shougo/deoplete.nvim', {'do': function('DoRemote')}
Plug 'Shougo/neco-vim', {'for': 'vim'}

" editing
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'farmergreg/vim-lastplace'
Plug 'Shougo/junkfile.vim'
Plug 'godlygeek/tabular'
Plug 'kaicataldo/material.vim'

" navigating
Plug 'tpope/vim-vinegar', {'on': '<Plug>VinegarVerticalSplitUp'}
Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'}
Plug 'mhinz/vim-grepper'
Plug 'tpope/vim-unimpaired'
Plug 'christoomey/vim-tmux-navigator'
Plug 'szw/vim-smartclose', {'on': 'SmartClose'}
Plug 'Shougo/denite.nvim', {'do': function('DoRemote')}

" vim interface
Plug 'arcticicestudio/nord-vim', { 'branch': 'develop' }

" python
Plug 'hynek/vim-python-pep8-indent', {'for': 'python'}

" javascript / JSON
Plug 'tpope/vim-jdaddy', {'for': 'json'}
Plug 'pangloss/vim-javascript', {'for': 'javascript.jsx'}
Plug 'mxw/vim-jsx', {'for': 'javascript.jsx'}

" haskell
Plug 'neovimhaskell/haskell-vim', {'for': 'haskell'}

" rust-lang
Plug 'rust-lang/rust.vim', {'for': 'rust'}

" go lang
Plug 'fatih/vim-go', {'for': 'go'}
Plug 'zchee/deoplete-go', {'for': 'go'}

" clojure
Plug 'tpope/vim-fireplace', {'for': 'clojure'}
Plug 'clojure-vim/async-clj-omni', {'for': 'clojure'}
Plug 'eraserhd/parinfer-rust', {'for': 'clojure', 'do': 'cargo build --release'}
Plug 'zekzekus/vim-cljfmt', {'for': 'clojure'}

" misc
Plug 'diepm/vim-rest-console', {'for': 'rest'}
" for dash
Plug 'rizzatti/dash.vim'

call plug#end()
