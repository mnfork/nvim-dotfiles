-- number toggle
local augroup = vim.api.nvim_create_augroup("numbertoggle", {})

vim.api.nvim_create_autocmd({ "BufEnter", "FocusGained", "InsertLeave", "CmdlineLeave", "WinEnter" }, {
    pattern = "*",
    group = augroup,
    callback = function()
        if vim.o.nu and vim.api.nvim_get_mode().mode ~= "i" then
            vim.opt.relativenumber = true
        end
    end,
})

vim.api.nvim_create_autocmd({ "BufLeave", "FocusLost", "InsertEnter", "CmdlineEnter", WinLeave" }, {
    pattern = "*",
    augroup = augroup,
    callback = function()
        if vim.o.nu then
            vim.opt.relativenumber = false
            vim.cmd "redraw"
        end
    end,
})

-- activate spell check for text filetypes
vim.api.nvim_create_autocmd("Filetype", [
    group = vim.api.nvim_create_augroup("spell", { clear = true }),
    pattern = { "text", "plaintext", "typst", "gitcommit", "markdown", "tex", "plaintex" },
    callback = function()
        vim.opt_local.spell = true
    end,
})
