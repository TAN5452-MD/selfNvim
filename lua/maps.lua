vim.g.mapleader = ' '
local keymap = vim.keymap
local km = vim.keymap
local G = require('G')
G.map({
  { 'n', '-', "foldlevel('.') > 0 ? 'za' : 'va{zf^'", {
    noremap = true,
    silent = true,
    expr = true
  } },
  { 'v', '-',           'zf',                                                           { noremap = true, silent = true } },
  { 'i', '<c-s-up>',    '<up><up><up><up><up><up><up><up><up><up>',                     { noremap = true, silent = true } },
  { 'i', '<c-s-down>',  '<down><down><down><down><down><down><down><down><down><down>', { noremap = true, silent = true } },
  { 'i', '<c-s-left>',  '<home>',                                                       { noremap = true, silent = true } },
  { 'i', '<c-s-right>', '<end>',                                                        { noremap = true, silent = true } },
  { 'n', '<c-s-up>',    '10k',                                                          { noremap = true } },
  { 'n', '<c-s-down>',  '10j',                                                          { noremap = true } },
  { 'n', '<c-s-left>',  '^',                                                            { noremap = true } },
  { 'n', '<c-s-right>', '$',                                                            { noremap = true } },
  { 'v', '<c-s-up>',    '10k',                                                          { noremap = true } },
  { 'v', '<c-s-down>',  '10j',                                                          { noremap = true } },
  { 'v', '<c-s-left>',  '^',                                                            { noremap = true } },
  { 'v', '<c-s-right>', '$h',                                                           { noremap = true } },
  { 'n', 'sv',          ':vsp<cr><c-w>w',                                               { noremap = true } },
  { 'n', 'sp',          ':sp<cr><c-w>w',                                                { noremap = true } },
  { 'n', 'sc',          ':close<cr>',                                                   { noremap = true } },
  { 'n', 'so',          ':only<cr>',                                                    { noremap = true } },
  { 'n', 's<Left>',     '<c-w>h',                                                       { noremap = true } },
  { 'n', 's<Right>',    '<c-w>l',                                                       { noremap = true } },
  { 'n', 's<Up>',       '<c-w>k',                                                       { noremap = true } },
  { 'n', 's<Down>',     '<c-w>j',                                                       { noremap = true } },
  { 'n', '<c-Space>',   '<c-w>w',                                                       { noremap = true } },
  { 'n', 's=',          '<c-w>=',                                                       { noremap = true } },
  { 'n', '<m-.>',       "winnr() <= winnr('$') - winnr() ? '<c-w>10>' : '<c-w>10<'",    { noremap = true, expr = true } },
  { 'n', '<m-,>',       "winnr() <= winnr('$') - winnr() ? '<c-w>10<' : '<c-w>10>'",    { noremap = true, expr = true } },
})

keymap.set('n', '<leader>q', '<cmd>q<cr>')
keymap.set('n', '<leader>w', '<cmd>w<cr>')
keymap.set('n', '<leader>x', '<cmd>x<cr>')

keymap.set('n', '<c-a>', 'gg<S-v>G')

keymap.set('n', '<leader>s', ':vsplit<Return><C-w>w', { silent = true })
-- keymap.set('n', 'ww', '<C-w>w')

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
