vim.api.nvim_set_keymap('n', '<A-o>', '<cmd> ClangdSwitchSourceHeader <CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>d', '<cmd> Bdelete <CR>', {})
vim.api.nvim_set_option('shell', '/bin/bash')

local vm_visual_multi_path = vim.api.nvim_get_runtime_file("lua/custom/configs/vm_visual_multi.lua", false)[1]

dofile(vm_visual_multi_path)
