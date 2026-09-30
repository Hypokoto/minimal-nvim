---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "minimal",
  hl_add = {
    MinimalDashboardHeader = { fg = "#14B9B5", bold = true },
    MinimalDashboardFooter = { fg = "#c53253" },
    FloatBorder            = { fg = "#c53253", bg = "#0e091d" },
    NormalFloat            = { bg = "#0e091d" },
    NvimTreeNormal         = { bg = "#0e091d" },
    NvimTreeNormalNC       = { bg = "#0e091d" },
    NvimTreeWinSeparator   = { fg = "#c53253", bg = "#0e091d" },
    NvimTreeFolderName     = { fg = "#ff7f41", bold = true },
    NvimTreeOpenedFolderName = { fg = "#14B9B5", bold = true },
    LineNr                 = { fg = "#c53253" },
    CursorLineNr           = { fg = "#14B9B5", bold = true },
    CursorLine             = { bg = "#c53253" },
    DiagnosticError        = { fg = "#E20342" },
    DiagnosticWarn         = { fg = "#FD3E6A" },
    DiagnosticInfo         = { fg = "#04C5F0" },
    DiagnosticHint         = { fg = "#ff7f41" },
    Visual                 = { bg = "#c53253" },
    Pmenu                  = { bg = "#0e091d", fg = "#14B9B5" },
    PmenuSel               = { bg = "#c53253", fg = "#ff7f41", bold = true },
    PmenuBorder            = { fg = "#c53253", bg = "#0e091d" },
  },
}

M.ui = {
  theme = "minimal",
  theme_toggle = { "minimal", "nice" },
  nvdash = {
    load_on_startup = true,
  },
  statusline = {
    theme = "minimal",
    style = "minimal",
  },
  tabufline = {
    enabled = true,
    order = { "buffers", "tabs", "btns", "treeOffset" },
  },
}

return M
