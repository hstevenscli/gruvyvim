local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Save and Quit easier
keymap("n", "<Space>w", ":w<CR>", opts)
keymap("n", "<Space>q", ":q<CR>", opts)

-- Terminal Remaps
keymap("n", "<Space>t", ":ToggleTerm direction=float<CR>", opts)
keymap("t", "<ESC>", [[<C-\><C-n>]], opts)
keymap("t", "jk", [[<C-\><C-n>]], opts)

-- Insert --
-- Press jk fast to exit insert mode
keymap("i", "jk", "<ESC>", opts)


-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Open NvimTree Easier
-- nnoremap <leader>t :NvimTreeToggle<CR>
keymap("n", "<S-t>", ":NvimTreeToggle<CR>", opts)



