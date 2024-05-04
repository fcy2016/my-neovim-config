local status, conform = pcall(require, "conform")
if not status then
    vim.notify("not found conform")
    return
end

conform.setup({
    format_on_save = { timeout_ms = 500, lsp_fallback = true },
    formatters_by_ft = {
        c = { "clang_format" },
        cpp = { "clang_format" },
        ["c++"] = { "clang_format" },
        go = {
            formatters = { "gofumpt", "golines", "goimports" },
            run_all_formatters = true,
            format_on_save = true,
        },
        html = { "prettierd" },
        json = { "jq" },
        rust = { "rustfmt" },
        bash = { "shfmt" },
        lua = { "stylua" },


        javascript = {
            "prettierd"
        },
        typescript = { "prettierd" },
        vue = { "prettierd" },
        python = {
            formatters = { "isort", "black" },
            run_all_formatters = true,
            format_on_save = true,
        },
        sql = { "sqlfmt" },
        yaml = { "yamlfix" },
        -- zig = { "zigfmt" },

    },


})
