local c = {
  bg        = "#1a1b26",
  fg        = "#c0caf5",
  black     = "#15161e",
  red       = "#f7768e",
  green     = "#9ece6a",
  yellow    = "#e0af68",
  blue      = "#7aa2f7",
  magenta   = "#bb9af7",
  cyan      = "#7dcfff",
  white     = "#a9b1d6",

  bg_dark    = "#16161e",
  bg_float   = "#1f2335",
  bg_visual  = "#2e3c64",
  bg_search  = "#3d59a1",
  line       = "#414868",
  comment    = "#565f89",
  gutter     = "#565f89",
  border     = "#a9b1d6",
  none       = "NONE",
}

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end
vim.o.termguicolors = true
vim.g.colors_name = "skytree"

local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

hl("Normal",        { fg = c.fg, bg = c.none })
hl("NormalNC",      { fg = c.fg, bg = c.none })
hl("EndOfBuffer",   { fg = c.gutter, bg = c.none })
hl("NormalFloat",   { fg = c.fg, bg = c.bg_float })
hl("FloatBorder",   { fg = c.border, bg = c.bg_float })
hl("FloatTitle",    { fg = c.blue, bg = c.bg_float, bold = true })
hl("Cursor",        { fg = c.bg, bg = c.fg })
hl("CursorLine",    { bg = c.line })
hl("CursorColumn",  { bg = c.line })
hl("CursorLineNr",  { fg = c.yellow, bold = true })
hl("LineNr",        { fg = c.gutter })
hl("SignColumn",    { fg = c.gutter, bg = c.none })
hl("ColorColumn",   { bg = c.bg_dark })
hl("WinSeparator",  { fg = c.white })
hl("StatusLine",    { fg = c.fg, bg = c.none })
hl("StatusLineNC",  { fg = c.comment, bg = c.none })
hl("TabLine",       { fg = c.comment, bg = c.none })
hl("TabLineSel",    { fg = c.fg, bg = c.none, bold = true })
hl("TabLineFill",   { bg = c.none })
hl("Pmenu",         { fg = c.fg, bg = c.bg_float })
hl("PmenuSel",      { bg = c.bg_visual, bold = true })
hl("PmenuSbar",     { bg = c.bg_float })
hl("PmenuThumb",    { bg = c.border })
hl("Visual",        { bg = c.bg_visual })
hl("Search",        { fg = c.fg, bg = c.bg_search })
hl("IncSearch",     { fg = c.black, bg = c.yellow })
hl("CurSearch",     { link = "IncSearch" })
hl("MatchParen",    { fg = c.yellow, bold = true, underline = true })
hl("Folded",        { fg = c.blue, bg = c.none })
hl("FoldColumn",    { fg = c.comment, bg = c.none })
hl("NonText",       { fg = c.gutter })
hl("Whitespace",    { fg = c.gutter })
hl("SpecialKey",    { fg = c.gutter })
hl("Directory",     { fg = c.blue })
hl("Title",         { fg = c.blue, bg = c.bg_float, bold = true })
hl("ErrorMsg",      { fg = c.red })
hl("WarningMsg",    { fg = c.yellow })
hl("MoreMsg",       { fg = c.blue })
hl("Question",      { fg = c.blue })
hl("QuickFixLine",  { bg = c.bg_visual, bold = true })

hl("Comment",       { fg = c.comment, italic = true })
hl("Constant",      { fg = c.yellow })
hl("String",        { fg = c.green })
hl("Character",     { fg = c.green })
hl("Number",        { fg = c.yellow })
hl("Float",         { fg = c.yellow })
hl("Boolean",       { fg = c.yellow })
hl("Identifier",    { fg = c.magenta })
hl("Function",      { fg = c.blue })
hl("Statement",     { fg = c.magenta })
hl("Conditional",   { fg = c.magenta })
hl("Repeat",        { fg = c.magenta })
hl("Label",         { fg = c.cyan })
hl("Operator",      { fg = c.cyan })
hl("Keyword",       { fg = c.magenta, italic = true })
hl("Exception",     { fg = c.magenta })
hl("PreProc",       { fg = c.cyan })
hl("Include",       { fg = c.magenta })
hl("Define",        { fg = c.magenta })
hl("Macro",         { fg = c.cyan })
hl("Type",          { fg = c.cyan })
hl("StorageClass",  { fg = c.cyan })
hl("Structure",     { fg = c.cyan })
hl("Typedef",       { fg = c.cyan })
hl("Special",       { fg = c.cyan })
hl("SpecialChar",   { fg = c.yellow })
hl("Tag",           { fg = c.red })
hl("Delimiter",     { fg = c.white })
hl("Debug",         { fg = c.red })
hl("Underlined",    { underline = true })
hl("Error",         { fg = c.red })
hl("Todo",          { fg = c.black, bg = c.yellow, bold = true })

hl("@variable",             { fg = c.fg })
hl("@variable.builtin",     { fg = c.red })
hl("@variable.parameter",   { fg = c.yellow })
hl("@variable.member",      { fg = c.cyan })
hl("@constant",             { link = "Constant" })
hl("@constant.builtin",     { fg = c.yellow })
hl("@string",               { link = "String" })
hl("@string.escape",        { fg = c.magenta })
hl("@string.regexp",        { fg = c.cyan })
hl("@number",               { link = "Number" })
hl("@boolean",              { link = "Boolean" })
hl("@function",             { link = "Function" })
hl("@function.builtin",     { fg = c.cyan })
hl("@function.macro",       { fg = c.cyan })
hl("@function.method",      { fg = c.blue })
hl("@constructor",          { fg = c.magenta })
hl("@keyword",              { link = "Keyword" })
hl("@keyword.function",     { fg = c.magenta, italic = true })
hl("@keyword.return",       { fg = c.magenta, italic = true })
hl("@operator",             { link = "Operator" })
hl("@punctuation.bracket",  { fg = c.white })
hl("@punctuation.delimiter",{ fg = c.white })
hl("@type",                 { link = "Type" })
hl("@type.builtin",         { fg = c.cyan, italic = true })
hl("@property",             { fg = c.cyan })
hl("@attribute",            { fg = c.cyan })
hl("@tag",                  { fg = c.red })
hl("@tag.attribute",        { fg = c.magenta })
hl("@tag.delimiter",        { fg = c.white })
hl("@comment",              { link = "Comment" })
hl("@markup.heading",       { fg = c.blue, bold = true })
hl("@markup.strong",        { bold = true })
hl("@markup.italic",        { italic = true })
hl("@markup.link.url",      { fg = c.cyan, underline = true })
hl("@markup.raw",           { fg = c.green })

hl("DiagnosticError",           { fg = c.red })
hl("DiagnosticWarn",            { fg = c.yellow })
hl("DiagnosticInfo",            { fg = c.blue })
hl("DiagnosticHint",            { fg = c.cyan })
hl("DiagnosticUnderlineError",  { undercurl = true, sp = c.red })
hl("DiagnosticUnderlineWarn",   { undercurl = true, sp = c.yellow })
hl("DiagnosticUnderlineInfo",   { undercurl = true, sp = c.blue })
hl("DiagnosticUnderlineHint",   { undercurl = true, sp = c.cyan })
hl("DiagnosticVirtualTextError",{ fg = c.red, bg = c.none })
hl("DiagnosticVirtualTextWarn", { fg = c.yellow, bg = c.none })
hl("DiagnosticVirtualTextInfo", { fg = c.blue, bg = c.none })
hl("DiagnosticVirtualTextHint", { fg = c.cyan, bg = c.none })
hl("LspReferenceText",          { bg = c.gutter })
hl("LspReferenceRead",          { bg = c.gutter })
hl("LspReferenceWrite",         { bg = c.gutter })
hl("LspInlayHint",              { fg = c.comment, bg = c.none })

hl("DiffAdd",       { bg = "#20303b" })
hl("DiffChange",    { bg = "#1f2231" })
hl("DiffDelete",    { bg = "#37222c" })
hl("DiffText",      { bg = "#394b70" })

hl("GitSignsAdd",    { fg = c.green, bg = c.none })
hl("GitSignsChange", { fg = c.yellow, bg = c.none })
hl("GitSignsDelete", { fg = c.red, bg = c.none })

hl("BlinkCmpMenu",                { fg = c.fg, bg = c.bg_float })
hl("BlinkCmpMenuBorder",          { fg = c.border, bg = c.bg_float })
hl("BlinkCmpMenuSelection",       { bg = c.bg_visual, bold = true })
hl("BlinkCmpLabelMatchedChars",   { fg = c.blue, bold = true })
hl("BlinkCmpDoc",                 { fg = c.fg, bg = c.bg_float })
hl("BlinkCmpDocBorder",           { fg = c.border, bg = c.bg_float })
hl("BlinkCmpSignatureHelp",       { fg = c.fg, bg = c.bg_float })
hl("BlinkCmpSignatureHelpBorder", { fg = c.border, bg = c.bg_float })

hl("OilDir",     { fg = c.blue, bold = true })
hl("OilDirIcon", { fg = c.blue })
hl("OilLink",    { fg = c.cyan })
hl("OilFile",    { fg = c.fg })

hl("PounceMatch",     { fg = c.black, bg = c.cyan })
hl("PounceGap", { fg = c.blue })
hl("PounceAccept",    { fg = c.black, bg = c.red, bold = true })
hl("PounceAcceptBest",    { fg = c.black, bg = c.red, bold = true })
hl("PounceCursor",    { fg = c.fg })
