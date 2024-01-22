-- vim.keymap.set(<mode>, <key>, <action>, <opts>)
vim.keymap.set('i', 'kj', '<Esc>', { noremap = true })
vim.keymap.set('n', 'S', ':wq<CR>', { noremap = true })
vim.keymap.set("i", '{<CR>', '{}<Esc>i<CR><Esc>ko', { noremap = true })
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
