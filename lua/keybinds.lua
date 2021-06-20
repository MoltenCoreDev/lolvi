-- keybinds.lua


-- Nerd tree
bind("n", "<Leader>n", "NERDTreeFocus", true)
bind("n", "<C-t>", "NERDTreeToggle", true)

-- Tabs
bind("n", "<Leader>w", "tabedit %", true)
bind("n", "<Leader>q", "tabp", true)
bind("n", "<Leader>e", "tabn", true)

-- telescope.nvim
bind("n", "<Leader>f", "Telescope find_files", true)
bind("n", "<Leader>t", "Telescope", true)

-- Temp
bind("n", "<Leader>c", "luafile %", true)
