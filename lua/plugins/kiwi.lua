return {
    'serenevoid/kiwi.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
        {
            name = 'wiki',
            path = '$HOME/wiki'
        }
    },
    keys = {
        { "<leader>ww", ":lua require(\"kiwi\").open_wiki_index()<cr>", desc = "Open Wiki index" },
        { "T", ":lua require(\"kiwi\").todo.toggle()<cr>", desc = "Toggle Markdown Task" },
    },
    lazy = true
}
