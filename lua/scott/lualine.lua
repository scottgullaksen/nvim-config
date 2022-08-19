-- All configs taken from https://github.com/nvim-lualine/lualine.nvim
-- Tons of options available.

local status_ok, _ = pcall(require, "lualine")
if not status_ok then
	return
end

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',  -- lualine theme
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {     -- Filetypes to disable lualine for.
        statusline = {},       -- only ignores the ft for statusline.
        winbar = {},           -- only ignores the ft for winbar.
        "dashboard",
        "NvimTree",
        "Outline",
    },
   ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
