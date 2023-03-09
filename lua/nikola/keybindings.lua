local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- when going to the end of the file, set the last line to the middle of the screen
keymap("n", "<S-g>", "<S-g>zz", opts)

-- copy whole file
keymap("n", "<leader>y", "gg^vG$y", opts)

-- copy whole file
keymap("n", "<leader>d", "gg^vG$d", opts)

--- paste data over a whole file
keymap("n", "<leader>p", "gg^vG$p", opts)

-- save file
keymap("n", "<leader>s", ":w <Enter>:lua vim.lsp.buf.format() <Enter>:w <Enter>", opts)

-- custom
keymap("n", "<leader>/", ':nohlsearch<CR>', opts)
keymap("n", ";", '$a;<escape>', opts)
keymap("n", ",", '$a,<escape>', opts)


-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-u>", "<C-u>", opts)
keymap("n", "<C-d>", "<C-d>", opts)

keymap("n", "<leader>v", ":vsplit <Enter>", opts)
-- My keybindings
keymap("n", "<C-e>", ":q <Enter>", opts)
keymap("n", "qwq", ":wq <Enter>", opts)
keymap("n", "<C-q>", ":qa! <Enter>", opts) -- force quit without saving

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)
keymap("v", "\"", 'c""<Esc>P', opts)
keymap("v", "\'", "c''<Esc>P", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
keymap("t", ";", "<C-\\><C-N>", term_opts)

keymap("n", "<leader>h", ":15 split <Enter>:set winfixheight<Enter>:terminal <Enter>", opts)

keymap("n", "<C-t>", ":terminal <Enter>:NvimTreeToggle<cr>", opts)

-- Telescope

keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<C-f>",
  "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>",
  opts)
keymap("n", "<C-t>", "<cmd>Telescope live_grep<cr>", opts)

-- Nvimtree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
-- Bufferline
keymap("n", "<C-w>", ":bd!<cr>", opts)
keymap("t", "<C-w>", ":q!<cr>", opts)

keymap("n", "<leader>u", ":UndotreeToggle <cr>", opts)
