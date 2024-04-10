return {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    version = "*",
    -- opts = {
    --     options = {
    --         mode = "tabs",
    --         separator_style = "slant",
    --     },
    -- },
    config = function()
        local bufferline = require("bufferline")

        bufferline.setup({
            options = {
                mode = "buffers",
            },
            -- offsets = {
            --     {
            --         filetype = "NvimTree",
            --         text = "File Explorer",
            --         text_align = "center",
            --         separator = true
            --     }
            -- },
        })

        local keymap = vim.keymap -- for conciseness
        keymap.set('n', '<leader>tg', '<cmd>BufferLinePick<CR>')
        keymap.set('n', '<leader>ts', '<cmd>BufferLinePickClose<CR>')
        keymap.set('n', '<S-l>', '<cmd>BufferLineCycleNext<CR>')
        keymap.set('n', '<S-h>', '<cmd>BufferLineCyclePrev<CR>')
    end,
}

