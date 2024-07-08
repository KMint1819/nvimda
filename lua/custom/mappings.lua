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

M.gp = {
  n = {
    ["<C-g>c"] = { "<cmd>GpChatNew<cr>", "New Chat" },
    ["<C-g>t"] = { "<cmd>GpChatToggle<cr>", "Toggle Chat" },
    ["<C-g>f"] = { "<cmd>GpChatFinder<cr>", "Chat Finder" },

    ["<C-g><C-x>"] = { "<cmd>GpChatNew split<cr>", "New Chat split" },
    ["<C-g><C-v>"] = { "<cmd>GpChatNew vsplit<cr>", "New Chat vsplit" },
    ["<C-g><C-t>"] = { "<cmd>GpChatNew tabnew<cr>", "New Chat tabnew" },

    ["<C-g>r"] = { "<cmd>GpRewrite<cr>", "Inline Rewrite" },
    ["<C-g>a"] = { "<cmd>GpAppend<cr>", "Append (after)" },
    ["<C-g>b"] = { "<cmd>GpPrepend<cr>", "Prepend (before)" },

    ["<C-g>gp"] = { "<cmd>GpPopup<cr>", "Generate Popup" },
    ["<C-g>ge"] = { "<cmd>GpEnew<cr>", "Generate GpEnew" },
    ["<C-g>gn"] = { "<cmd>GpNew<cr>", "Generate GpNew" },
    ["<C-g>gv"] = { "<cmd>GpVnew<cr>", "Generate GpVnew" },
    ["<C-g>gt"] = { "<cmd>GpTabnew<cr>", "Generate GpTabnew" },

    ["<C-g>n"] = { "<cmd>GpNextAgent<cr>", "Next Agent" },
    ["<C-g>s"] = { "<cmd>GpStop<cr>", "GpStop" },
    ["<C-g>x"] = { "<cmd>GpContext<cr>", "Toggle GpContext" },

    ["<C-g>w"] = { "<cmd>GpWhisper<cr>", "Whisper" },
    ["<C-g>wr"] = { "<cmd>GpWhisperRewrite<cr>", "Whisper Inline Rewrite" },
    ["<C-g>wa"] = { "<cmd>GpWhisperAppend<cr>", "Whisper Append (after)" },
    ["<C-g>wb"] = { "<cmd>GpWhisperPrepend<cr>", "Whisper Prepend (before)" },
    ["<C-g>wp"] = { "<cmd>GpWhisperPopup<cr>", "Whisper Popup" },
    ["<C-g>we"] = { "<cmd>GpWhisperEnew<cr>", "Whisper Enew" },
    ["<C-g>wn"] = { "<cmd>GpWhisperNew<cr>", "Whisper New" },
    ["<C-g>wv"] = { "<cmd>GpWhisperVnew<cr>", "Whisper Vnew" },
    ["<C-g>wt"] = { "<cmd>GpWhisperTabnew<cr>", "Whisper Tabnew" },
  },

  v = {
    ["<C-g>c"] = { ":<C-u>'<,'>GpChatNew<cr>", "Visual Chat New" },
    ["<C-g>p"] = { ":<C-u>'<,'>GpChatPaste<cr>", "Visual Chat Paste" },
    ["<C-g>t"] = { ":<C-u>'<,'>GpChatToggle<cr>", "Visual Toggle Chat" },

    ["<C-g><C-x>"] = { ":<C-u>'<,'>GpChatNew split<cr>", "Visual Chat New split" },
    ["<C-g><C-v>"] = { ":<C-u>'<,'>GpChatNew vsplit<cr>", "Visual Chat New vsplit" },
    ["<C-g><C-t>"] = { ":<C-u>'<,'>GpChatNew tabnew<cr>", "Visual Chat New tabnew" },

    ["<C-g>r"] = { ":<C-u>'<,'>GpRewrite<cr>", "Visual Rewrite" },
    ["<C-g>a"] = { ":<C-u>'<,'>GpAppend<cr>", "Visual Append (after)" },
    ["<C-g>b"] = { ":<C-u>'<,'>GpPrepend<cr>", "Visual Prepend (before)" },
    ["<C-g>i"] = { ":<C-u>'<,'>GpImplement<cr>", "Implement selection" },

    ["<C-g>gp"] = { ":<C-u>'<,'>GpPopup<cr>", "Visual Popup" },
    ["<C-g>ge"] = { ":<C-u>'<,'>GpEnew<cr>", "Visual GpEnew" },
    ["<C-g>gn"] = { ":<C-u>'<,'>GpNew<cr>", "Visual GpNew" },
    ["<C-g>gv"] = { ":<C-u>'<,'>GpVnew<cr>", "Visual GpVnew" },
    ["<C-g>gt"] = { ":<C-u>'<,'>GpTabnew<cr>", "Visual GpTabnew" },

    ["<C-g>n"] = { "<cmd>GpNextAgent<cr>", "Next Agent" },
    ["<C-g>s"] = { "<cmd>GpStop<cr>", "GpStop" },
    ["<C-g>x"] = { ":<C-u>'<,'>GpContext<cr>", "Visual GpContext" },

    ["<C-g>w"] = { ":<C-u>'<,'>GpWhisper<cr>", "Whisper" },
    ["<C-g>wr"] = { ":<C-u>'<,'>GpWhisperRewrite<cr>", "Whisper Inline Rewrite" },
    ["<C-g>wa"] = { ":<C-u>'<,'>GpWhisperAppend<cr>", "Whisper Append (after)" },
    ["<C-g>wb"] = { ":<C-u>'<,'>GpWhisperPrepend<cr>", "Whisper Prepend (before)" },
    ["<C-g>wp"] = { ":<C-u>'<,'>GpWhisperPopup<cr>", "Whisper Popup" },
    ["<C-g>we"] = { ":<C-u>'<,'>GpWhisperEnew<cr>", "Whisper Enew" },
    ["<C-g>wn"] = { ":<C-u>'<,'>GpWhisperNew<cr>", "Whisper New" },
    ["<C-g>wv"] = { ":<C-u>'<,'>GpWhisperVnew<cr>", "Whisper Vnew" },
    ["<C-g>wt"] = { ":<C-u>'<,'>GpWhisperTabnew<cr>", "Whisper Tabnew" },
  },

  i = {
    ["<C-g>c"] = { "<cmd>GpChatNew<cr>", "New Chat" },
    ["<C-g>t"] = { "<cmd>GpChatToggle<cr>", "Toggle Chat" },
    ["<C-g>f"] = { "<cmd>GpChatFinder<cr>", "Chat Finder" },

    ["<C-g><C-x>"] = { "<cmd>GpChatNew split<cr>", "New Chat split" },
    ["<C-g><C-v>"] = { "<cmd>GpChatNew vsplit<cr>", "New Chat vsplit" },
    ["<C-g><C-t>"] = { "<cmd>GpChatNew tabnew<cr>", "New Chat tabnew" },

    ["<C-g>r"] = { "<cmd>GpRewrite<cr>", "Inline Rewrite" },
    ["<C-g>a"] = { "<cmd>GpAppend<cr>", "Append (after)" },
    ["<C-g>b"] = { "<cmd>GpPrepend<cr>", "Prepend (before)" },

    ["<C-g>gp"] = { "<cmd>GpPopup<cr>", "Popup" },
    ["<C-g>ge"] = { "<cmd>GpEnew<cr>", "GpEnew" },
    ["<C-g>gn"] = { "<cmd>GpNew<cr>", "GpNew" },
    ["<C-g>gv"] = { "<cmd>GpVnew<cr>", "GpVnew" },
    ["<C-g>gt"] = { "<cmd>GpTabnew<cr>", "GpTabnew" },

    ["<C-g>x"] = { "<cmd>GpContext<cr>", "Toggle GpContext" },
    ["<C-g>s"] = { "<cmd>GpStop<cr>", "GpStop" },
    ["<C-g>n"] = { "<cmd>GpNextAgent<cr>", "Next Agent" },

    ["<C-g>w"] = { "<cmd>GpWhisper<cr>", "Whisper" },
    ["<C-g>wr"] = { "<cmd>GpWhisperRewrite<cr>", "Whisper Inline Rewrite" },
    ["<C-g>wa"] = { "<cmd>GpWhisperAppend<cr>", "Whisper Append (after)" },
    ["<C-g>wb"] = { "<cmd>GpWhisperPrepend<cr>", "Whisper Prepend (before)" },
    ["<C-g>wp"] = { "<cmd>GpWhisperPopup<cr>", "Whisper Popup" },
    ["<C-g>we"] = { "<cmd>GpWhisperEnew<cr>", "Whisper Enew" },
    ["<C-g>wn"] = { "<cmd>GpWhisperNew<cr>", "Whisper New" },
    ["<C-g>wv"] = { "<cmd>GpWhisperVnew<cr>", "Whisper Vnew" },
    ["<C-g>wt"] = { "<cmd>GpWhisperTabnew<cr>", "Whisper Tabnew" },
  },
}
return M
