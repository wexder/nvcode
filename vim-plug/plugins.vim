" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
" ALE "
" Plug 'dense-analysis/ale'
"Better Comments
Plug 'tpope/vim-commentary'
" Change dates fast
Plug 'tpope/vim-speeddating'
" Convert binary, hex, etc..
" Plug 'glts/vim-radical'
" Repeat stuff
Plug 'tpope/vim-repeat'
" Text Navigation
Plug 'unblevable/quick-scope'
" Useful for React Commenting 
Plug 'suy/vim-context-commentstring'
" Easymotion
Plug 'easymotion/vim-easymotion'
" Surround
Plug 'tpope/vim-surround'
" Have the file system follow you around
Plug 'airblade/vim-rooter'
" auto set indent settings
Plug 'tpope/vim-sleuth'
" Better Syntax Support
Plug 'sheerun/vim-polyglot'
" Cool Icons
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'
" Closetags
" Plug 'alvan/vim-closetag'
" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
" Terminal
Plug 'voldikss/vim-floaterm'
" Start Screen
Plug 'mhinz/vim-startify'
" Snippets
Plug 'honza/vim-snippets'
" Better tabline
Plug 'zefei/vim-wintabs'
Plug 'zefei/vim-wintabs-powerline'
" See what keys do like in emacs
Plug 'liuchengxu/vim-which-key'
" undo time travel
Plug 'mbbill/undotree'
" Find and replace
" Plug 'ChristianChiarulli/far.vim'
Plug 'brooth/far.vim'
" " async tasks
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
" Swap windows
Plug 'wesQ3/vim-windowswap'
" Easily Create Gists
Plug 'mattn/webapi-vim'
" Intuitive buffer closing
Plug 'moll/vim-bbye'
" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kaicataldo/material.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nicwest/vim-http'   
" Debug
Plug 'puremourning/vimspector'
" Repl
Plug 'rhysd/reply.vim', { 'on': ['Repl', 'ReplAuto'] }

Plug 'uarun/vim-protobuf'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
