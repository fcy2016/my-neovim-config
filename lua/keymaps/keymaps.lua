vim.g.mapleader = " "


local keymap = vim.keymap
-- --------- 关闭方向键 -------------
keymap.set("n","<UP>","")
keymap.set("n","<DOWN>","")
keymap.set("n","<LEFT>","")
keymap.set("n","<RIGHT>","")

keymap.set("i","<UP>","")
keymap.set("i","<DOWN>","")
keymap.set("i","<LEFT>","")
keymap.set("i","<RIGHT>","")

keymap.set("i","<A-h>","<LEFT>")
keymap.set("i","<A-l>","<RIGHT>")
keymap.set("i","<A-j>","<DOWN>")
keymap.set("i","<A-k>","<UP>")
keymap.set("i","<A-L>","<ESC>$a")
keymap.set("i","<A-H>","<ESC>^i")
-- ---------- 插入模式 ---------- ---
keymap.set("i", "kk", "<ESC>")
keymap.set("i", "<C-s>", "<ESC>:w<CR>a")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 ---------- ---
-- 移动
keymap.set("n", "L", "$")
keymap.set("n", "H", "0")
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口
keymap.set("n", "<C-s>", ":w<CR>")

-- 取消高亮
keymap.set("n", "<leader><CR>", ":nohl<CR>")

-- 切换buffer
keymap.set("n", "<C-L>", ":bnext<CR>")
keymap.set("n", "<C-H>", ":bprevious<CR>")


-- --------- 插件--------- ---
-- NerdTree
keymap.set("n", "<F2>", ":NvimTreeToggle<CR>")
keymap.set("i", "<F2>", "<ESC>:NvimTreeToggle<CR>")


-- --------- telescope ------------
-- local builtin = require('telescope.builtin')
keymap.set('n', '<leader>ff', ":Telescope find_files<CR>")
keymap.set('n', '<leader>fg', ":Telescope live_grep<CR>")
keymap.set('n', '<leader>fb', ":Telescope buffers<CR>")
keymap.set('n', '<leader>fh', ":Telescope help_tags<CR>")
