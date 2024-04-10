return {
    {
        -- "rose-pine/neovim",
        "rose-pine/neovim",
        priority = 1000 ,
        config = function()
            local rose = require("rose-pine")
            -- load the colorscheme here
            rose.setup({
                styles = {
                    transparency = true,
                },
            })

            vim.cmd([[colorscheme rose-pine]])
        end,
    },
}
