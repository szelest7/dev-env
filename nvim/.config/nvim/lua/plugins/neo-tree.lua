return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons", -- optional, but recommended
        },
        lazy = false, -- neo-tree will lazily load itself
        config = function()
            vim.keymap.set('n', '<C-n>', ':Neotree toggle right<CR>')
        end
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            require("telescope").setup({
              extensions = {
                ["ui-select"] = {
                  require("telescope.themes").get_dropdown {
                  }
                }
              }
            })
            require("telescope").load_extension("ui-select")
        end
    }
}
