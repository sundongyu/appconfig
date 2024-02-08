local map = vim.api.nvim_set_keymap
-- map(<mode>, <key>, <action>, <opts>)
map('i', 'kj', '<Esc>', { noremap = true })
map('n', 'S', ':wq<CR>', { noremap = true })
map("i", '{<CR>', '{}<Esc>i<CR><Esc>ko', { noremap = true })
-- 启用行号和相对行号
vim.wo.number = true
vim.wo.relativenumber = true

-- 设置缩进
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.guicursor = "n-v-c:block-Cursor/lCursor"


-- 主题
vim.cmd('colorscheme desert')
-- java
vim.cmd([[
  augroup JavaAutoCompileRun
    autocmd!
    autocmd FileType java nnoremap <buffer> <F2> :w<Bar>!javac % -d %:p:h<CR>
    autocmd FileType java nnoremap <buffer> <F3> :w<Bar>!java -cp %:p:h %:t:r<CR>
  augroup END
]])
