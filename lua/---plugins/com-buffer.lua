return {
  {
    "hrsh7th/cmp-buffer",
    config=function()
      require('cmp').setup({
        sources = {
          { name = 'buffer' },
        },
      })
    end
  },
  {
    "hrsh7th/cmp-nvim-lsp"
  },
  {
    'hrsh7th/cmp-path'
  },
  {
    'hrsh7th/cmp-cmdline'
  },
  {
    'hrsh7th/cmp-cmdline'
  }
}
