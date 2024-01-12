local setmap = vim.keymap.set

local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


-- Better window navigation
setmap("n", "<C-h>", "<C-w>h", opts)
setmap("n", "<C-j>", "<C-w>j", opts)
setmap("n", "<C-k>", "<C-w>k", opts)
setmap("n", "<C-l>", "<C-w>l", opts)

-- Explorer on the left site
setmap("n", "<leader>e", ":Lex 30<cr>", opts)
setmap("n", "<leader>pv", vim.cmd.Ex)

-- Navigate buffer (back page / forward page in browser)
setmap("n", "<S-l>", ":bnext<CR>", opts)
setmap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
setmap("v", "<A-j>", ":m .+1<CR>==", opts)
setmap("v", "<A-k>", ":m .-2<CR>==", opts)

-- Visual Block --
-- Move text up and down
setmap("x", "J", ":move '>+1<CR>gv-gv", opts)
setmap("x", "K", ":move '<-2<CR>gv-gv", opts)
setmap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
setmap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Changes p key behavior (So it does not yank the pasted text) // Woth trying on and off 
setmap("v", "p", '"_dP', opts)
