-- util.lua

-- Simple wrapper to make the config cleaner
function bind(mode, key, command, noremap)
    vim.api.nvim_set_keymap(mode, key, "<Cmd>" .. command .. "<CR>", { noremap = noremap, silent = true })
end
