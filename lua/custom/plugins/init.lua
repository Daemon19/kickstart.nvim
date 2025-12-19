-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- Normal mode toggle
vim.keymap.set('n', '<leader>tt', '<cmd>ToggleTerm<cr>', { desc = 'Toggle terminal' })

-- Specific directions
vim.keymap.set('n', '<leader>tf', '<cmd>ToggleTerm direction=float<cr>', { desc = 'Floating terminal' })
vim.keymap.set('n', '<leader>th', '<cmd>ToggleTerm direction=horizontal<cr>', { desc = 'Horizontal terminal' })
vim.keymap.set('n', '<leader>tv', '<cmd>ToggleTerm direction=vertical<cr>', { desc = 'Vertical terminal' })

vim.keymap.set('i', '<C-j>', '<Esc>', { desc = 'Change to normal mode' })
vim.keymap.set('v', '<C-j>', '<Esc>', { desc = 'Change to normal mode' })

return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {
    -- Default size of the terminal window (in lines or columns)
    size = function(term)
      return term.direction == 'horizontal' and 20 or vim.o.columns * 0.4
    end,

    -- Keybinding to toggle the terminal globally
    open_mapping = '\\',

    -- Hide line numbers inside terminal buffers
    hide_numbers = true,

    -- Enable background shading for terminal windows
    shade_terminals = true,

    -- How dark the shading should be (higher = darker)
    shading_factor = 2,

    -- Automatically enter insert mode when terminal opens
    start_in_insert = true,

    -- Allow terminal toggle mappings to work in insert mode
    insert_mappings = true,

    -- Allow terminal toggle mappings to work in terminal mode
    terminal_mappings = true,

    -- Remember terminal size between sessions
    persist_size = true,

    -- Default terminal direction:
    -- 'horizontal', 'vertical', 'float', or 'tab'
    direction = 'float',

    -- Automatically close terminal when the process exits
    close_on_exit = true,

    -- Use the shell defined in Neovim options (bash, zsh, etc.)
    shell = vim.o.shell,
  },
}
