-- lazy.nvim stuff
require("config.lazy")

-- neovim builtin settings
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.opt.number = true

-- telescope stuff
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-f>", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<C-g>", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<C-b>", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<C-h>", builtin.help_tags, { desc = "Telescope help tags" })
vim.keymap.set("n", "<C-t>", ":Neotree filesystem reveal left<CR>", {})

-- colorscheme
require("gruvbox").setup()
vim.cmd.colorscheme("gruvbox")
