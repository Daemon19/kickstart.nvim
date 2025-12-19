return {
  'Pocco81/auto-save.nvim',
  config = function()
    require('auto-save').setup {
      enabled = true,
      execution_message = {
        enabled = false,
      },
      trigger_events = {
        'InsertLeave',
        'TextChanged',
      },
      debounce_delay = 135,
    }
  end,
}
