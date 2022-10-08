" auto-instll vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Indentation guides
    Plug 'lukas-reineke/indent-blankline.nvim'
    " telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
    Plug 'tpope/vim-commentary'
    " vim smoothie
    Plug 'psliwka/vim-smoothie'
    " autocompletion
    Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
    " Tagbar
    Plug 'preservim/tagbar'
    " gruvbox
    Plug 'morhetz/gruvbox'
    " tokyonight
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
    " bufferline
    Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
    " nvim-tree
    Plug 'kyazdani42/nvim-tree.lua'
    " toggleterm
    Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
    " lualine
    Plug 'nvim-lualine/lualine.nvim'   



call plug#end()

nmap <F8> :TagbarToggle<CR>

set completeopt-=preview " For No Previews

" require plugin configs

lua require('hunterstevens.nd_indent-blankline')
lua require('hunterstevens.options')
lua require('hunterstevens.keymaps')
lua require("bufferline").setup{}
lua require("nvim-tree").setup()
lua require("toggleterm").setup{}
lua require('lualine').setup()

let mapleader = " "

nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>ff :lua require('telescope.builtin').find_files()<CR>
