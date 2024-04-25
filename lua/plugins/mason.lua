return {
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  opts={
    ensure_installed={
      "gopls",
      "pyright",
      "lua-language-server"
    }
  },
  config=function()
  end
  

}
