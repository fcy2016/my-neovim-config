return {
  "golang.go",
  dependencies={"golang/gopls"},
  config=function()
    print(require("lspconfig"))
    require("lspconfig").gopls.setup()
    print("gopls")
  end

}
