 vim.api.nvim_set_keymap('n', '<A-o>', '<cmd> ClangdSwitchSourceHeader <CR>', {})
 vim.api.nvim_set_keymap('n', '<Leader>d', '<cmd> Bdelete <CR>', {})
 vim.api.nvim_set_option('shell', '/bin/bash')

dofile('lua/custom/configs/vm_visual_multi.lua')
