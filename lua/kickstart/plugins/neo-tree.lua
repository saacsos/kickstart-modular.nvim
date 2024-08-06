-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  -- version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree toggle<CR>', desc = 'NeoTree reveal' },
  },

  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },

  config = function()
    vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', { desc = 'neotree left' })
    vim.keymap.set('n', '<leader>bf', ':Neotree buffers reveal float<CR>', { desc = 'neotree buffer reverl float' })
  end,
}
