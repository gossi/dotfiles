return {
  {
     "nvim-treesitter/nvim-treesitter", 
     build = ":TSUpdate",
     opts = {
       ensure_installed = {
         "css",
         "elixir",
         "glimmer",
         "glimmer_javascript",
         "glimmer_typescript",
         "html",
         "javascript",
         "json",
         "json5",
         "lua",
         "markdown",
         "markdown_inline",
         "typescript",
         "yaml",
         "zsh"
       },
       highlight = { enable = true },
       indent = { enable = true }
     }
  }
}
