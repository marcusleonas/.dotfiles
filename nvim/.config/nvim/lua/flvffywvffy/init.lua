vim.opt.termguicolors = true

require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

require("flvffywvffy.packer")
require("flvffywvffy.remap")
require("flvffywvffy.set")

vim.cmd[[colorscheme catppuccin]]
