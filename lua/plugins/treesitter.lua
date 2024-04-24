return {
  "nvim-treesitter/nvim-treesitter",
  main="nvim-treesitter.configs",
  build=":TSUpdate",
  --opts={
    --ensure_installed="all",
  --},
  dependencies={
    "nvim-treesitter/playground",
  },
  config=function()
    require("nvim-treesitter.configs").setup{
      -- 添加不同语言
      ensure_installed = { "vim", "bash", "c", "cpp", "javascript", "json", "lua", "python", "typescript", "go", "tsx", "css", "rust", "markdown", "markdown_inline", "sql", "java"}, -- one of "all" or a list of languages
      --ensure_installed="all",
      highlight = { enable = true },
      indent = { enable = true },
      -- 不同括号颜色区分
      rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
      },
      playground={
        enable=true,
      },
    }
  end
}
