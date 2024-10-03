return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = function()
    local cmp = require("cmp")
    local cmp_select = { behavior = cmp.SelectBehavior.Select }
    local telescope_builtin = require('telescope.builtin')

    return {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
      { "<leader>pv", vim.cmd.Ex, desc = "Open Ex mode" },
      { "J", ":m '>+1<CR>gv=gv", mode = "v", desc = "Move selected text down" },
      { "K", ":m '<-2<CR>gv=gv", mode = "v", desc = "Move selected text up" },
      { "J", "mzJ`z", desc = "Join lines and keep cursor position" },
      { "<C-d>", "<C-d>zz", desc = "Scroll down and center" },
      { "<C-u>", "<C-u>zz", desc = "Scroll up and center" },
      { "n", "nzzzv", desc = "Next search result and center" },
      { "N", "Nzzzv", desc = "Previous search result and center" },
      { "<leader>vwm", function() require("vim-with-me").StartVimWithMe() end, desc = "Start Vim With Me" },
      { "<leader>svwm", function() require("vim-with-me").StopVimWithMe() end, desc = "Stop Vim With Me" },
      { "<leader>p", [["_dP]], mode = "x", desc = "Paste without yanking" },
      { "<leader>y", [["+y]], mode = { "n", "v" }, desc = "Yank to system clipboard" },
      { "<leader>Y", [["+Y]], desc = "Yank line to system clipboard" },
      { "<leader>d", [["_d]], mode = { "n", "v" }, desc = "Delete without yanking" },
      { "<C-c>", "<Esc>", mode = "i", desc = "Escape insert mode" },
      { "Q", "<nop>", desc = "Disable Ex mode" },
      { "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", desc = "Open tmux sessionizer" },
      { "<leader>f", vim.lsp.buf.format, desc = "Format code" },
      { "<C-k>", "<cmd>cnext<CR>zz", desc = "Next quickfix item and center" },
      { "<C-j>", "<cmd>cprev<CR>zz", desc = "Previous quickfix item and center" },
      { "<leader>k", "<cmd>lnext<CR>zz", desc = "Next location list item and center" },
      { "<leader>j", "<cmd>lprev<CR>zz", desc = "Previous location list item and center" },
      { "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], desc = "Replace word under cursor" },
      { "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }, desc = "Make file executable" },
      { "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>", desc = "Insert error handling" },
      { "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>", desc = "Edit packer.lua" },
      { "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>", desc = "Make it rain" },
      { "<leader><leader>", function() vim.cmd("so") end, desc = "Source file" },
      { "<leader>.", vim.lsp.buf.hover, desc = "LSP Hover" },
      { "<leader>,", vim.diagnostic.open_float, desc = "Open diagnostics" },
      -- Additional keymaps from other Lua files
      { "<C-p>", cmp.mapping.select_prev_item(cmp_select), desc = "Select previous item (cmp)" },
      { "<C-n>", cmp.mapping.select_next_item(cmp_select), desc = "Select next item (cmp)" },
      { "<Tab>", cmp.mapping.confirm({ select = true }), desc = "Confirm selection (cmp)" },
      { "<C-Space>", cmp.mapping.complete(), desc = "Trigger completion (cmp)" },
      { "<leader>pf", telescope_builtin.find_files, desc = "Find files (telescope)" },
      { "<leader>pws", function() telescope_builtin.grep_string({ search = vim.fn.expand("<cword>") }) end, desc = "Grep word under cursor (telescope)" },
      { "<leader>pWs", function() telescope_builtin.grep_string({ search = vim.fn.expand("<cWORD>") }) end, desc = "Grep WORD under cursor (telescope)" },
      { "<leader>ps", function() telescope_builtin.grep_string({ search = vim.fn.input("Grep > ") }) end, desc = "Grep input (telescope)" },
      { "<leader>vh", telescope_builtin.help_tags, desc = "Help tags (telescope)" },
      { "<leader>u", vim.cmd.UndotreeToggle, desc = "Toggle UndoTree" },
      { "<leader>zz", function()
          require("zen-mode").setup {
            window = { width = 90, options = {} },
          }
          require("zen-mode").toggle()
          vim.wo.wrap = false
          vim.wo.number = true
          vim.wo.rnu = true
          ColorMyPencils()
        end,
        desc = "Toggle Zen Mode (wide)"
      },
      { "<leader>zZ", function()
          require("zen-mode").setup {
            window = { width = 80, options = {} },
          }
          require("zen-mode").toggle()
          vim.wo.wrap = false
          vim.wo.number = false
          vim.wo.rnu = false
          vim.opt.colorcolumn = "0"
          ColorMyPencils()
        end,
        desc = "Toggle Zen Mode (narrow)"
      },
    }
  end,
}

