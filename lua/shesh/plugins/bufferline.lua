return {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    version = "*",
    opts = {
        options = {
            mode = "tabs",
            separator_style = "slant",
        },
    },
    config = function()
        local keymap = vim.keymap -- for conciseness
        keymap.set('n', 'gb', '<cmd>BufferLinePick<CR>')
        keymap.set('n', '<leader>ts', '<cmd>BufferLinePickClose<CR>')
        keymap.set('n', '<S-l>', '<cmd>BufferLineCycleNext<CR>')
        keymap.set('n', '<S-h>', '<cmd>BufferLineCyclePrev<CR>')
        -- keymap.set('n', ']b', '<CMD>BufferLineMoveNext<CR>')
        -- keymap.set('n', '[b', '<CMD>BufferLineMovePrev<CR>')
    end,
}
