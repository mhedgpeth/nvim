-- ~/.config/nvim/after/ftplugin/rust.lua

-- Get the current buffer number
local bufnr = vim.api.nvim_get_current_buf()

-- Rust-specific keymaps
-- These complement your existing LSP keymaps
vim.keymap.set('n', '<leader>a', function()
  vim.cmd.RustLsp 'codeAction' -- Uses rust-analyzer's grouping capability
end, { silent = true, buffer = bufnr })

-- Override K to show hover with actions
vim.keymap.set('n', 'K', function()
  vim.cmd.RustLsp { 'hover', 'actions' }
end, { silent = true, buffer = bufnr })

-- Common Rust tools
vim.keymap.set('n', '<leader>rt', function()
  vim.cmd.RustLsp 'testables'
end, { silent = true, buffer = bufnr, desc = 'Run Rust tests' })

vim.keymap.set('n', '<leader>rr', function()
  vim.cmd.RustLsp 'runnables'
end, { silent = true, buffer = bufnr, desc = 'Run Rust binary' })

vim.keymap.set('n', '<leader>rd', function()
  vim.cmd.RustLsp 'debuggables'
end, { silent = true, buffer = bufnr, desc = 'Debug Rust binary' })

vim.keymap.set('n', '<leader>rem', function()
  vim.cmd.RustLsp 'expandMacro'
end, { silent = true, buffer = bufnr, desc = 'Expand Rust macro' })
