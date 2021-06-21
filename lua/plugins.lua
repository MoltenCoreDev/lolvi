-- plugins.lua
vim.g.coc_global_extensions = {"coc-json", "coc-tsserver", "coc-pairs", "coc-lua", "coc-pyright", "coc-discord-rpc"}

require "paq-nvim" {
    "savq/paq-nvim";
	"neoclide/coc.nvim";
	"preservim/nerdtree";
    "glepnir/dashboard-nvim";
    "nvim-telescope/telescope.nvim";
    "nvim-lua/plenary.nvim";
    "nvim-lua/popup.nvim";
    "sharkdp/bat";
    "sharkdp/fd";
    "BurntSushi/ripgrep";
    "vim-airline/vim-airline";
    "vim-airline/vim-airline-themes";
    "nvim-treesitter/nvim-treesitter";
    "morhetz/gruvbox";
}

-- Dashboard.nvim

footers = {
    "MoltenCoreDev 2021©",
    "Also try Megalomacs©!",
    "Also try LunarVim©!",
    "Also try going outside!"
}


vim.g.dashboard_custom_header = {
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⢀⣤⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⡀⠀⠀⣠⣾⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⣠⣴⣦⣼⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⢰⡆⠀⢀⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⢳⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⢻⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⠀⠀⢻⣿⣿⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠙⠻⢿⣿⣿⡿⠀⠀⠀⠀⠀⢰⠦⢤⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠿⠿⠿⠥⠀⠀⠀⠀⠈⣿⣿⣿⣿⣷⣦⣄⣀⣀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⣸⠀⠀⠈⠛⢿⣿⠿⠋⠁⢀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠰⣼⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠙⠒⠀⢠⣾⣿⠀⠀⠀⠀⠘⠁⠀⠀⢰⣿⣿⣿⣧⠀⠀⠀⠀⣀⡀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⠋⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠸⣿⡇⠀⠈⠀⠀⣰⣿⣿⣿⣷⣦⠀⠀⠹⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣇⡀⠀⠀⠀⣀⡀⠀⠀⠙⠓⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣇⠀⠀⣿⣿⣿⣿⣿⣿⠟⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⠁⠀⣴⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⠀⠀⣿⣿⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⡿⠀⢰⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⡟⠀⢠⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⡇⠀⢸⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠈⠻⠿⠿⠿⠋⠀⢀⣾⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⣧⠀⠘⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠊⢹⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣆⠀⠈⠙⠛⠛⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⠁⠀⠈⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣷⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⡋⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⠓⠲⠤⢤⣀⣀⣀⣀⣀⣠⣤⣶⣿⣿⣇⠀⠀⠀⠀⢸⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⢸⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠾⠟⠻⠿⣿⠿⡿⢿⣿⣿⡇⠀⢸⣷⡸⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⣿⣶⠀⠋⣠⣠⣾⣿⣿⣿⢀⣾⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⢿⣿⣿⣿⣿⠀⠀⠀⢰⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠙⠁⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
}

math.randomseed(os.clock())
vim.g.dashboard_custom_footer = {footers[math.floor(math.random(#(footers)))]}
vim.g.dashboard_custom_section = {
    a = {description = {"Find a file."}, command = "DashboardFindFile"},
}
vim.g.dashboard_default_executive = "telescope"
