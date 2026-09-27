---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "minimal",
  hl_add = {
    MinimalDashboardHeader = { fg = "#14B9B5", bold = true },
    MinimalDashboardFooter = { fg = "#848BB6" },
    FloatBorder            = { fg = "#342946", bg = "#241B2F" },
    NormalFloat            = { bg = "#241B2F" },
    NvimTreeNormal         = { bg = "#0e091d" },
    NvimTreeNormalNC       = { bg = "#0e091d" },
    NvimTreeWinSeparator   = { fg = "#342946", bg = "#0e091d" },
    NvimTreeFolderName     = { fg = "#ff7f41", bold = true },
    NvimTreeOpenedFolderName = { fg = "#14B9B5", bold = true },
    LineNr                 = { fg = "#848BB6" },
    CursorLineNr           = { fg = "#14B9B5", bold = true },
    CursorLine             = { bg = "#241B2F" },
    DiagnosticError        = { fg = "#BE3F50" },
    DiagnosticWarn         = { fg = "#FD3E6A" },
    DiagnosticInfo         = { fg = "#04C5F0" },
    DiagnosticHint         = { fg = "#ff7f41" },
    Visual                 = { bg = "#342946" },
    Pmenu                  = { bg = "#241B2F", fg = "#14B9B5" },
    PmenuSel               = { bg = "#342946", fg = "#ff7f41", bold = true },
    PmenuBorder            = { fg = "#342946", bg = "#241B2F" },
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
