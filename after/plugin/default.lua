-- NOTE: Telescope keybinds are in the root init.lua file
vim.keymap.set('n', '<leader>gf', ':Telescope git_files<CR>', { desc = '[G]it [F]iles' })

-- General keybinds
vim.keymap.set('n', '<leader>fs', ':w<CR>', { desc = '[F]ile [s]ave' })
vim.keymap.set('n', '<leader>fq', ':q<CR>', { desc = '[F]ile [Q]uit' })
vim.keymap.set('n', '<leader>fS', ':so %<CR>', { desc = '[F]ile [S]ource' })
vim.keymap.set('i', 'jk', '<Esc>', { desc = 'Exit insert mode' })
vim.keymap.set('n', '<leader>pv', ':vertical split<CR>', { desc = '[P]ane [V]ertical split' })
vim.keymap.set('n', '<leader>ph', ':horizontal split<CR>', { desc = '[P]ane [H]orizontal split' })

-- NeoTree keybinds
vim.keymap.set('n', '<leader>fd', ':Neotree toggle<CR>', { desc = '[F]ile [D]irectory' })

-- Toggleterm keybinds
vim.keymap.set('n', '<leader>t', ':ToggleTerm<CR>', { desc = "[T]erminal" })
function _G.set_terminal_keymaps()
  vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { buffer = 0 })
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], { buffer = 0 })
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- Vim fugitive keybinds
vim.keymap.set('n', '<leader>go', ':Git<CR>', { desc = '[G]it [O]pen' })
vim.keymap.set('n', '<leader>gb', ':Git blame<CR>', { desc = '[G]it [B]lame' })

-- global settings for nvim
vim.wo.scrolloff = 8
vim.o.ts = 2
vim.o.sts = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.rnu = true
