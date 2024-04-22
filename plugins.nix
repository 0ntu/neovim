{ pkgs }:
with pkgs.vimPlugins; [
  catppuccin-nvim
  telescope-nvim
  nvim-autopairs
  comment-nvim
  fidget-nvim
  harpoon
  indent-blankline-nvim
  lualine-nvim
  luasnip
  neodev-nvim
  rustaceanvim
  nvim-treesitter.withAllGrammars
  which-key-nvim
  plenary-nvim
  nvim-cmp
  cmp-nvim-lsp
  lspkind-nvim
  nvim-lspconfig
]
