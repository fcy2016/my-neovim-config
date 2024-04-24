return {
  config=function()
    require("lspconfig").gopls.setup()
    print("gopls")
  end

}
