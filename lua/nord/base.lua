local lush = require("lush")

local colors = require("nord.colors")

local nord0 = colors.nord0;
local nord1 = colors.nord1;
local nord2 = colors.nord2;
local nord3 = colors.nord3;
local nord3_bright = colors.nord3_bright;
local nord4 = colors.nord4;
local nord5 = colors.nord5;
local nord6 = colors.nord6;
local nord7 = colors.nord7;
local nord8 = colors.nord8;
local nord9 = colors.nord9;
local nord10 = colors.nord10;
local nord11 = colors.nord11;
local nord12 = colors.nord12;
local nord13 = colors.nord13;
local nord14 = colors.nord14;
local nord15 = colors.nord15;
local empty = "";
local NONE = "NONE";

local styles = {
  italic = "italic",
  bold = "bold",
  underline = "underline",
  inverse = "inverse",
  undercurl = "undercurl",
}

local cursor_line_nr_bg = nord1
if vim.g.nord_cursor_line_number_background == 0 then
  cursor_line_nr_bg = empty
end

local statue_line_nc_bg = nord3
local statue_line_term_nc_bg = nord3
if vim.g.nord_uniform_status_lines == 0 then
  statue_line_nc_bg = nord1
  statue_line_term_nc_bg = nord1
end

-- Neovim Terminal Colors --
vim.g.terminal_color_0  = nord1.hex
vim.g.terminal_color_1  = nord11.hex
vim.g.terminal_color_2  = nord14.hex
vim.g.terminal_color_3  = nord13.hex
vim.g.terminal_color_4  = nord9.hex
vim.g.terminal_color_5  = nord15.hex
vim.g.terminal_color_6  = nord8.hex
vim.g.terminal_color_7  = nord5.hex
vim.g.terminal_color_8  = nord3.hex
vim.g.terminal_color_9  = nord11.hex
vim.g.terminal_color_10 = nord14.hex
vim.g.terminal_color_11 = nord13.hex
vim.g.terminal_color_12 = nord9.hex
vim.g.terminal_color_13 = nord15.hex
vim.g.terminal_color_14 = nord7.hex
vim.g.terminal_color_15 = nord6.hex

vim.g.colors_name = "nord"

local base_group = lush(function ()
  return {
    -- Attributes --
    Bold          { gui = styles.bold },
    Italic        { gui = styles.italic },
    Underline     { gui = styles.underline },

    -- Editor --
    ColorColumn   { fg = empty,  bg = nord1, },
    Cursor        { fg = nord0,  bg = nord4, },
    CursorLine    { fg = empty,  bg = nord1, },
    Error         { fg = nord4,  bg = nord11, },
    iCursor       { fg = nord0,  bg = nord4, },
    LineNr        { fg = nord3,  bg = NONE, },
    MatchParen    { fg = nord8,  bg = nord3, },
    NonText       { fg = nord2,  bg = empty, },
    Normal        { fg = nord4,  bg = nord0, },
    Pmenu         { fg = nord4,  bg = nord2, },
    PmenuSbar     { fg = nord4,  bg = nord2, },
    PmenuSel      { fg = nord8,  bg = nord3, },
    PmenuThumb    { fg = nord8,  bg = nord3, },
    SpecialKey    { fg = nord3,  bg = empty, },
    SpellBad      { fg = nord11, bg = nord0, gui = styles.undercurl },
    SpellCap      { fg = nord13, bg = nord0, gui = styles.undercurl },
    SpellLocal    { fg = nord5,  bg = nord0, gui = styles.undercurl },
    SpellRare     { fg = nord6,  bg = nord0, gui = styles.undercurl },
    Visual        { fg = empty,  bg = nord2, },
    VisualNOS     { fg = empty,  bg = nord2, },
    healthError   { fg = nord11, bg = nord1, },
    healthSuccess { fg = nord14, bg = nord1, },
    healthWarning { fg = nord13, bg = nord1, },
    TermCursorNC  { fg = empty,  bg = nord1, },

    -- Gutter --
    CursorColumn  { fg = nord1,  bg = NONE,  },
    CursorLineNr  { fg = nord4,  bg = cursor_line_nr_bg, },
    Folded        { fg = nord3,  bg = nord1, gui = styles.bold },
    FoldColumn    { fg = nord3,  bg = nord0, },
    SignColumn    { fg = nord1,  bg = nord0, },

    -- Navigation --
    Directory     { fg = nord8,  bg = empty, },

    -- Prompt/Status --
    EndOfBuffer   { fg = nord1,  bg = empty, },
    ErrorMsg      { fg = nord4,  bg = nord11 },
    ModeMsg       { fg = nord4,  bg = empty, },
    MoreMsg       { fg = nord8,  bg = empty, },
    Question      { fg = nord4,  bg = empty, },
    StatusLine    { fg = nord8,  bg = nord3, },
    StatusLineNC  { fg = nord4,  bg = statue_line_nc_bg, },
    StatusLineTerm { fg = nord8, bg = nord3, },
    StatusLineTermNC { fg = nord4, bg = statue_line_term_nc_bg, },
    WarningMsg    { fg = nord0,  bg = nord13 },
    WildMenu      { fg = nord8,  bg = nord1  },

    -- Search --
  }
end)

return base_group
