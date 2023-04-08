vim.g.mapleader = ' '
local keymap = vim.keymap
local km = vim.keymap
keymap.set('n', '<leader>q', '<cmd>q<cr>')
keymap.set('n', '<leader>w', '<cmd>w<cr>')
keymap.set('n', '<leader>x', '<cmd>x<cr>')

keymap.set('n', '<c-a>', 'gg<S-v>G')

keymap.set('n', '<leader>s', ':vsplit<Return><C-w>w', { silent = true })
--  keymap.set('n', 'f', '<C-w>w')

keymap.set('n', 'H', '^')
keymap.set('n', 'L', '$')


--插入模式
km.set("i", "jk", "<ESC>")

--视觉模式
-- 单行或多行移动
km.set("n", "J", "5j")
km.set("n", "K", "5k")
-- km.set("v","J",":m '>+5<CR>gv=gv")
-- km.set("v","K",":m '>-5<CR>gv=gv")

--正常模式
--窗口
km.set("n", "<leader>sv", "<C-w>v") -- 水平新开窗口
km.set("n", "<leader>sh", "<C-w>s") -- 垂直新开窗口

--文档树插件
km.set("n", "<leader>t", ":NvimTreeToggle<CR>")
