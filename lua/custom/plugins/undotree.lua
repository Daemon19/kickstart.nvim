return {
  'mbbill/undotree',
  keys = {
    {
      '<leader>u',
      function()
        vim.cmd.UndotreeToggle()
        vim.cmd.UndotreeFocus()
      end,
      desc = 'Toggle [U]ndotree',
    },
  },
}
