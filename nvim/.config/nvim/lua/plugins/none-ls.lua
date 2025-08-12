return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.gofmt,
                null_ls.builtins.formatting.goimports,
                null_ls.builtins.formatting.goimports_reviser,
                null_ls.builtins.formatting.golines,
                null_ls.builtins.formatting.clang_format,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.completion.luasnip,
                null_ls.builtins.completion.nvim_snippets,
                null_ls.builtins.completion.spell,
                null_ls.builtins.diagnostics.golangci_lint,
            },
        })
        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}
