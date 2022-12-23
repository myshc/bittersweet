set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "bittersweet"

let s:black       = { "gui": "#181818", "cterm": "232" }
let s:red         = { "gui": "#aaaaaa", "cterm": "9" }
let s:green       = { "gui": "#73c936", "cterm": "10" }
let s:yellow      = { "gui": "#ffdd33", "cterm": "3" }
let s:blue        = { "gui": "#aaaaaa", "cterm": "75"  }
let s:purple      = { "gui": "#aaaaaa", "cterm": "176" }
let s:cyan        = { "gui": "#aaaaaa", "cterm": "73"  }
let s:white       = { "gui": "#d3d7cf", "cterm": "255" }
let s:grey        = { "gui": "#aaaaaa", "cterm": "240" }
let s:brown       = { "gui": "#aaaaaa", "cterm": "179" }

function! s:h(group, fg, bg, attr)
  if type(a:fg) == type({})
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" . a:fg.cterm
  else
    exec "hi " . a:group . " guifg=NONE cterm=NONE"
  endif
  if type(a:bg) == type({})
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" . a:bg.cterm
  else
    exec "hi " . a:group . " guibg=NONE ctermbg=NONE"
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  else
    exec "hi " . a:group . " gui=NONE cterm=NONE"
  endif
endfun

call s:h("Normal",          "",        "",       "")

call s:h("Cursor",          s:black,   s:blue,   "")
call s:h("CursorColumn",    "",        "",       "")
call s:h("CursorLine",      s:yellow,  "",       "underline")

call s:h("LineNr",          s:grey,    "",       "")
call s:h("CursorLineNr",    s:yellow,  "",       "")

call s:h("DiffAdd",         s:green,   "",       "")
call s:h("DiffChange",      s:yellow,  "",       "")
call s:h("DiffDelete",      s:red,     "",       "")
call s:h("DiffText",        s:blue,    "",       "")

call s:h("IncSearch",       s:black,   s:yellow, "")
call s:h("Search",          s:black,   s:yellow, "")

call s:h("ErrorMsg",        s:white,   "",       "")
call s:h("ModeMsg",         s:white,   "",       "")
call s:h("MoreMsg",         s:white,   "",       "")
call s:h("WarningMsg",      s:red,     "",       "")
call s:h("Question",        s:purple,  "",       "")

call s:h("Pmenu",           s:black,   s:white,  "")
call s:h("PmenuSel",        s:white,   s:blue,   "")
call s:h("PmenuSbar",       "",        "",       "")
call s:h("PmenuThumb",      "",        s:white,  "")

call s:h("SpellBad",        s:red,     "",       "")
call s:h("SpellCap",        s:yellow,  "",       "")
call s:h("SpellLocal",      s:yellow,  "",       "")
call s:h("SpellRare",       s:yellow,  "",       "")

call s:h("StatusLine",      s:blue,    "",       "")
call s:h("StatusLineNC",    "",        "",       "")
call s:h("TabLine",         "",        "",       "")
call s:h("TabLineFill",     "",        "",       "")
call s:h("TabLineSel",      s:black,   s:white,  "")

"call s:h("Visual",         "",        "",       "")
"call s:h("VisualNOS",      "",        "",       "")

call s:h("ColorColumn",     s:grey,    "",       "")
call s:h("Conceal",         s:white,   "",       "")
call s:h("Directory",       s:blue,    "",       "")
call s:h("VertSplit",       "",        "",       "")
call s:h("Folded",          s:white,   "",       "")
call s:h("FoldColumn",      s:white,   "",       "")
call s:h("SignColumn",      s:white,   "",       "")

call s:h("MatchParen",      s:blue,    "",       "underline")
call s:h("SpecialKey",      s:yellow,  "",       "")
call s:h("Title",           s:green,   "",       "")
call s:h("WildMenu",        s:white,   "",       "")
" }


" Syntax colors {
" Whitespace is defined in Neovim, not Vim.
" See :help hl-Whitespace and :help hl-SpecialKey
call s:h("Whitespace",      "",        "",       "")
call s:h("NonText",         "",        "",       "")
call s:h("Comment",         s:grey,    "",       "")
call s:h("Constant",        s:brown,   "",       "")
call s:h("String",          s:brown,   "",       "")
call s:h("Character",       s:brown,   "",       "")
call s:h("Number",          s:brown,   "",       "")
call s:h("Boolean",         s:brown,   "",       "")
call s:h("Float",           s:brown,   "",       "")

call s:h("Identifier",      s:blue,    "",       "")
call s:h("Function",        s:blue,    "",       "")
call s:h("Statement",       s:purple,  "",       "")

call s:h("Conditional",     s:yellow,  "",       "")
call s:h("Repeat",          s:yellow,  "",       "")
call s:h("Label",           s:yellow,  "",       "")
call s:h("Operator",        s:yellow,  "",       "")
call s:h("Keyword",         s:yellow,  "",       "")
call s:h("Exception",       s:yellow,  "",       "")

call s:h("PreProc",         s:purple,  "",       "")
call s:h("Include",         s:purple,  "",       "")
call s:h("Define",          s:purple,  "",       "")
call s:h("Macro",           s:purple,  "",       "")
call s:h("PreCondit",       s:purple,  "",       "")
  
call s:h("Type",            s:yellow,  "",       "")
call s:h("StorageClass",    s:yellow,  "",       "")
call s:h("Structure",       s:purple,  "",       "")
call s:h("Typedef",         s:purple,  "",       "")
call s:h("Special",         s:green,    "",       "")
call s:h("SpecialChar",     s:green,    "",       "")
call s:h("Tag",             s:white,   "",       "")
call s:h("Delimiter",       s:white,   "",       "")
call s:h("SpecialComment",  s:white,   "",       "")
call s:h("Debug",           s:white,   "",       "")
call s:h("Underlined",      s:white,   "",       "")
call s:h("Ignore",          s:white,   "",       "")
call s:h("Error",           s:red,     "",       "")
call s:h("Todo",            s:yellow,  "",       "")
