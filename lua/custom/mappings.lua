-- n, v, i, t = mode names

local M = {}

M.general = {
  n = {
    ["<leader>z"] = { [[":echo "Hello from <Leader>z mapping"<CR>]], "print message" },
    ["<A-o>"] = { "<cmd> ClangdSwitchSourceHeader <CR>", "Cland switch source header" }
  }
}

M.bbye = {
  n = {
    ["<leader>d"] = { "<cmd> Bdelete <CR>", "Delete the current buffer" }
  }
}

M.diffview = {
  n = {
    ["<C-m>"] = { "<CMD>DiffviewOpen<CR>", "Open diffview" }
  },
  i = {
    ["<C-m>"] = { "<CMD>DiffviewOpen<CR>", "Open diffview" }
  },
  v = {
    ["<C-m>"] = { "<CMD>DiffviewOpen<CR>", "Open diffview" }
  }
}

return M
