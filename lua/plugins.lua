-- plugins.lua

vim.g.coc_global_extensions = {"coc-json", "coc-tsserver", "coc-pairs", "coc-lua", "coc-pyright"}

require 'paq-nvim' {
    'savq/paq-nvim';
	'neoclide/coc.nvim';
	'preservim/nerdtree';
    'glepnir/dashboard-nvim';
    'nvim-telescope/telescope.nvim';
    'nvim-lua/plenary.nvim';
    'nvim-lua/popup.nvim';
    'sharkdp/bat';
    'sharkdp/fd';
    'BurntSushi/ripgrep';
    'vim-airline/vim-airline';
    'vim-airline/vim-airline-themes';
    'nvim-treesitter/nvim-treesitter';
    'morhetz/gruvbox';
}
