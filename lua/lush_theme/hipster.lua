--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require("lush")
local hsl = lush.hsl

-- color palette
local seaweed = hsl(168, 100, 37)
local milky = hsl(0, 0, 93)

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function()
	return {
		-- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
		-- groups, mostly used for styling UI elements.
		-- Comment them out and add your own properties to override the defaults.
		-- An empty definition `{}` will clear all styling, leaving elements looking
		-- like the 'Normal' group.
		-- To be able to link to a group, it must already be defined, so you may have
		-- to reorder items as you go.
		--
		-- See :h highlight-groups
		--
		ColorColumn({ bg = milky.lighten(75) }), -- Columns set with 'colorcolumn'
		-- Conceal      { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor({ bg = hsl(177, 100, 24) }), -- Character under the cursor
		-- lCursor({}), -- Character under the cursor when |language-mapping| is used (see 'guicursor')
		-- CursorIM({}), -- Like Cursor, but used when in IME mode |CursorIM|
		CursorColumn({ bg = hsl(208, 22, 34) }), -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine({ bg = hsl(208, 22, 34) }), -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
		-- Directory    { }, -- Directory names (and other special names in listings)
		DiffAdd({ fg = hsl(157, 79, 44) }), -- Diff mode: Added line |diff.txt|
		DiffChange({ fg = hsl(27, 100, 59) }), -- Diff mode: Changed line |diff.txt|
		DiffDelete({ fg = hsl(0, 83, 53) }), -- Diff mode: Deleted line |diff.txt|
		DiffText({ fg = hsl(197, 100, 77) }), -- Diff mode: Changed text within a changed line |diff.txt|
		-- EndOfBuffer  { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
		TermCursor({}), -- Cursor in a focused terminal
		-- TermCursorNC { }, -- Cursor in an unfocused terminal
		-- ErrorMsg     { }, -- Error messages on the command line
		VertSplit({ bg = hsl(157, 79, 44) }), -- Column separating vertically split windows
		Folded({ bg = hsl(191, 57, 23) }), -- Line used for closed folds
		-- FoldColumn   { }, -- 'foldcolumn'
		SignColumn({ bg = hsl(6, 80, 62) }), -- Column where |signs| are displayed
		-- IncSearch    { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		-- Substitute   { }, -- |:substitute| replacement text highlighting
		LineNr({ bg = hsl(6, 80, 62), fg = hsl(6, 74, 83) }), -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		CursorLineNr({ bg = hsl(6, 80, 62), fg = hsl(0, 0, 93) }), -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		MatchParen({ bg = hsl(157, 79, 44), fg = hsl(0, 0, 93) }), -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		-- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgArea      { }, -- Area for messages and cmdline
		-- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
		-- MoreMsg      { }, -- |more-prompt|
		NonText({ fg = hsl(353, 88, 75) }), -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal({ bg = hsl(210, 29, 24), fg = hsl(192, 15, 94) }), -- Normal text
		NormalFloat({ bg = hsl(206, 36, 30), fg = hsl(190, 18, 93) }), -- Normal text in floating windows.
		-- NormalNC     { }, -- normal text in non-current windows
		Pmenu({ bg = hsl(206, 36, 30), fg = hsl(190, 18, 93) }), -- Popup menu: Normal item.
		PmenuSel({ bg = hsl(4, 100, 64), fg = hsl(190, 18, 93) }), -- Popup menu: Selected item.
		PmenuSbar({ bg = hsl(190, 18, 93) }), -- Popup menu: Scrollbar.
		PmenuThumb({ bg = hsl(185, 76, 26) }), -- Popup menu: Thumb of the scrollbar.
		-- Question     { }, -- |hit-enter| prompt and yes/no questions
		-- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search({ bg = hsl(354, 30, 41), fg = hsl(192, 15, 94) }), -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
		-- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
		-- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		-- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		-- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		-- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
		-- StatusLine({}), -- Status line of current window
		-- StatusLineNC({}), -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine({ bg = hsl(168, 100, 37) }), -- Tab pages line, not active tab page label
		TabLineFill({ bg = hsl(168, 100, 37) }), -- Tab pag206, 36, 30es line, where there are no labels
		TabLineSel({ bg = hsl(185, 76, 26) }), -- Tab pages line, active tab page label
		-- Title        { }, -- Titles for output from ":set all", ":autocmd" etc.
		Visual({ bg = hsl(168, 76, 42), fg = hsl(0, 0, 93) }), -- Visual mode selection
		-- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
		-- WarningMsg   { }, -- Warning messages
		Whitespace({ fg = hsl(0, 0, 93) }), -- "nbsp", "space", "tab" and "trail" in 'listchars'
		Winseparator({ bg = hsl(206, 36, 30), fg = hsl(0, 0, 93) }), -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
		-- WildMenu     { }, -- Current match in 'wildmenu' completion

		-- Common vim syntax groups used for all kinds of code and markup.
		-- Commented-out groups should chain up to their preferred (*) group
		-- by default.
		--
		-- See :h group-name
		--
		-- Uncomment and edit if you want more specific syntax highlighting.

		Comment({ fg = hsl(210, 9, 52) }), -- Any comment

		Constant({ fg = hsl(5, 74, 62) }), -- (*) Any constant
		String({ fg = hsl(353, 88, 75) }), --   A string constant: "this is a string"
		Character({ fg = hsl(5, 74, 62) }), --   A character constant: 'c', '\n'
		Number({ fg = hsl(5, 74, 62) }), --   A number constant: 234, 0xff
		Boolean({ fg = hsl(355, 100, 70) }), --   A boolean constant: TRUE, false
		Float({ fg = hsl(5, 74, 62) }), --   A floating point constant: 2.3e10

		Identifier({ fg = hsl(292, 25, 66) }), -- (*) Any variable name
		Function({ fg = hsl(5, 74, 62) }), --   Function name (also: methods for classes)

		Statement({ fg = hsl(292, 25, 66) }), -- (*) Any statement
		Conditional({ fg = hsl(292, 25, 66) }), --   if, then, else, endif, switch, etc.
		Repeat({ fg = hsl(168, 76, 42) }), --   for, do, while, etc.
		Label({ fg = hsl(39, 91, 68) }), --   case, default, etc.
		Operator({ fg = hsl(0, 0, 93) }), --   "sizeof", "+", "*", etc.
		Keyword({ fg = hsl(262, 62, 71) }), --   any other keyword
		Exception({ fg = hsl(168, 76, 42) }), --   try, catch, throw

		-- PreProc        { }, -- (*) Generic Preprocessor
		-- Include        { }, --   Preprocessor #include
		-- Define         { }, --   Preprocessor #define
		-- Macro          { }, --   Same as Define
		-- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

		Type({ fg = hsl(194, 35, 76) }), -- (*) int, long, char, etc.
		StorageClass({ fg = hsl(39, 91, 68) }), --   static, register, volatile, etc.
		Structure({ fg = hsl(39, 91, 68) }), --   struct, union, enum, etc.
		Typedef({ fg = hsl(262, 62, 71) }), --   A typedef

		Special({ fg = hsl(197, 100, 77) }), -- (*) Any special symbol
		SpecialChar({ fg = hsl(168, 76, 42) }), --   Special character in a constant
		-- Tag            { }, --   You can use CTRL-] on this
		Delimiter({ fg = hsl(39, 91, 68) }), --   Character that needs attention
		SpecialComment({ fg = hsl(197, 100, 77) }), --   Special things inside a comment (e.g. '\n')
		Debug({ fg = hsl(275, 72, 65) }), --   Debugging statements

		Underlined({ gui = "underdot", fg = hsl(218, 88, 70) }), -- Text that stands out, HTML links
		-- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
		Error({ fg = hsl(350, 100, 66) }), -- Any erroneous construct
		Todo({ fg = hsl(6, 80, 62) }), -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

		-- These groups are for the native LSP client and diagnostic system. Some
		-- other LSP clients may use these groups, or use their own. Consult your
		-- LSP client's documentation.

		-- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
		--
		-- LspReferenceText            { } , -- Used for highlighting "text" references
		-- LspReferenceRead            { } , -- Used for highlighting "read" references
		-- LspReferenceWrite           { } , -- Used for highlighting "write" references
		-- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
		-- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
		-- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.
		-- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
		--
		DiagnosticError({ bg = hsl(6, 80, 62), fg = hsl(0, 0, 0) }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticWarn({ bg = hsl(39, 61, 50), fg = hsl(6, 80, 62) }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticInfo({ bg = hsl(218, 72, 65), fg = hsl(6, 80, 62) }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticHint({ bg = hsl(0, 0, 93), fg = hsl(6, 80, 62) }), -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline) DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text. DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
		-- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
		-- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
		DiagnosticUnderlineError({ fg = hsl(0, 83, 53) }), -- Used to underline "Error" diagnostics.
		DiagnosticUnderlineWarn({ fg = hsl(39, 61, 50) }), -- Used to underline "Warn" diagnostics.
		DiagnosticUnderlineInfo({ fg = hsl(218, 72, 65) }), -- Used to underline "Info" diagnostics.
		DiagnosticUnderlineHint({ fg = hsl(0, 0, 93) }), -- Used to underline "Hint" diagnostics.
		-- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
		-- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
		-- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
		-- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
		-- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
		-- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
		-- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
		-- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.

		-- Tree-Sitter syntax groups. Most link to corresponding
		-- vim syntax groups (e.g. TSKeyword => Keyword) by default.
		--
		-- See :h nvim-treesitter-highlights, some groups may not be listed, submit a PR fix to lush-template!
		--
		-- TSAttribute          { } , -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
		-- TSBoolean({ fg = hsl(355, 100, 70) }), -- Boolean literals: `True` and `False` in Python.
		-- TSCharacter          { } , -- Character literals: `'a'` in C.
		-- TSCharacterSpecial   { } , -- Special characters.
		-- TSComment({ fg = hsl(210, 9, 52) }), -- Line comments and block comments.
		-- TSConditional        { } , -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
		-- TSConstant           { } , -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
		-- TSConstBuiltin       { } , -- Built-in constant values: `nil` in Lua.
		-- TSConstMacro         { } , -- Constants defined by macros: `NULL` in C.
		-- TSConstructor        { } , -- Constructor calls and definitions: `{}` in Lua, and Java constructors.
		TSDebug({ fg = hsl(275, 72, 65) }), -- Debugging statements.
		-- TSDefine             { } , -- Preprocessor #define statements.
		-- TSError              { } , -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
		-- TSException          { } , -- Exception related keywords: `try`, `except`, `finally` in Python.
		-- TSField              { } , -- Object and struct fields.
		-- TSFloat              { } , -- Floating-point number literals.
		-- TSFunction           { } , -- Function calls and definitions.
		-- TSFuncBuiltin        { } , -- Built-in functions: `print` in Lua.
		-- TSFuncMacro          { } , -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
		-- TSInclude            { } , -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
		-- TSKeyword            { } , -- Keywords that don't fit into other categories.
		-- TSKeywordFunction    { } , -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
		-- TSKeywordOperator    { } , -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
		-- TSKeywordReturn({ fg = hsl(292, 25, 66) }), -- Keywords like `return` and `yield`.
		-- TSLabel              { } , -- GOTO labels: `label:` in C, and `::label::` in Lua.
		-- TSMethod             { } , -- Method calls and definitions.
		-- TSNamespace          { } , -- Identifiers referring to modules and namespaces.
		-- TSNone               { } , -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
		-- TSNumber             { } , -- Numeric literals that don't fit into other categories.
		TSOperator({ fg = hsl(350, 100, 66) }), -- Binary or unary operators: `+`, and also `->` and `*` in C.
		-- TSParameter          { } , -- Parameters of a function.
		-- TSParameterReference { } , -- References to parameters of a function.
		-- TSPreProc            { } , -- Preprocessor #if, #else, #endif, etc.
		-- TSProperty           { } , -- Same as `TSField`.
		TSPunctDelimiter({ fg = hsl(0, 0, 93) }), -- Punctuation delimiters: Periods, commas, semicolons, etc.
		-- TSPunctBracket       {  fg = hsl(197, 100, 77) } , -- Brackets, braces, parentheses, etc.
		-- TSPunctSpecial       { } , -- Special punctuation that doesn't fit into the previous categories.
		-- TSRepeat({ fg = hsl(292, 25, 66) }), -- Keywords related to loops: `for`, `while`, etc.
		-- TSStorageClass({ fg = hsl(262, 62, 71) }), -- Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc.
		-- TSString             { } , -- String literals.
		TSStringRegex({ fg = hsl(197, 100, 77) }), -- Regular expression literals.
		TSStringEscape({ fg = hsl(0, 0, 93) }), -- Escape characters within a string: `\n`, `\t`, etc.
		-- TSStringSpecial      { } , -- Strings with special meaning that don't fit into the previous categories.
		-- TSSymbol             { } , -- Identifiers referring to symbols or atoms.
		TSTag({ fg = hsl(355, 100, 70) }), -- Tags like HTML tag names.
		TSTagAttribute({ fg = hsl(39, 100, 71) }), -- HTML tag attributes.
		TSTagDelimiter({ fg = hsl(0, 0, 93) }), -- Tag delimiters like `<` `>` `/`.
		-- TSText               { } , -- Non-structured text. Like text in a markup language.
		-- TSStrong({ gui = "bold", fg = hsl(355, 100, 70) }), -- Text to be represented in bold.
		-- TSEmphasis           { } , -- Text to be represented with emphasis.
		-- TSUnderline({ gui = "underline", fg = hsl(218, 88, 70) }), -- Text to be represented with an underline.
		-- TSStrike({ gui = "strikethrough" }), -- Strikethrough text.
		-- TSTitle              { } , -- Text that is part of a title.
		-- TSLiteral            { } , -- Literal or verbatim text.
		-- TSURI({ gui = "underline", fg = hsl(218, 88, 70) }), -- URIs like hyperlinks or email addresses.
		-- TSMath               { } , -- Math environments like LaTeX's `$ ... $`
		-- TSTextReference      { } , -- Footnotes, text references, citations, etc.
		-- TSEnvironment        { } , -- Text environments of markup languages.
		-- TSEnvironmentName    { } , -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
		-- TSNote               { } , -- Text representation of an informational note.
		-- TSWarning            { } , -- Text representation of a warning note.
		-- TSDanger             { } , -- Text representation of a danger note.
		-- TSType               { } , -- Type (and class) definitions and annotations.
		-- TSTypeBuiltin        { } , -- Built-in types: `i32` in Rust.
		-- TSVariable           { } , -- Variable names that don't fit into other categories.
		-- TSVariableBuiltin    { } , -- Variable names defined by the language: `this` or `self` in Javascript.
	}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
