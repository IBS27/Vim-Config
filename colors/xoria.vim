" Maintainer: Nebojsa Koturovic <necer95@gmail.com>

set background=dark
hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name='xoria'

hi Normal guifg=#d0d0d0 ctermfg=252 guibg=#1c1c1c ctermbg=234 gui=NONE cterm=NONE
hi Comment guifg=#808080 ctermfg=244 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi Constant guifg=#ffffaf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi String guifg=#ffffaf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Character guifg=#ffffaf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Number guifg=#d7af87 ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Boolean guifg=#d7af87 ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Float guifg=#d7af87 ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Identifier guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Function guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Statement guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Conditional guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Repeat guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Label guifg=#afafdf ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Operator guifg=#afafdf ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Keyword guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Exception guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#afdf87 ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Include guifg=#afdf87 ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Define guifg=#afdf87 ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Title guifg=#88c0d0 ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Macro guifg=#afdf87 ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PreCondit guifg=#88c0d0 ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Type guifg=#afafdf ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StorageClass guifg=#afafdf ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Structure guifg=#afafdf ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Typedef guifg=#afafdf ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Special guifg=#df8787 ctermfg=174 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpecialComment guifg=#808080 ctermfg=244 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Error guifg=#ff8080 ctermfg=210 guibg=NONE ctermbg=NONE gui=bold,reverse cterm=bold,reverse
hi Todo guifg=#d7af87 ctermfg=180 guibg=NONE ctermbg=NONE gui=bold,italic cterm=bold,italic
hi Underlined guifg=#88c0d0 ctermfg=110 gui=underline cterm=underline
hi Cursor guifg=#515052 ctermfg=239 guibg=#aeafad ctermbg=145 gui=NONE cterm=NONE
hi ColorColumn guifg=NONE ctermfg=NONE guibg=#444444 ctermbg=238 gui=NONE cterm=NONE
hi CursorLineNr guifg=#d0d0d0 ctermfg=252 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi SignColumn guifg=NONE ctermfg=NONE guibg=#1c1c1c ctermbg=234 gui=NONE cterm=NONE
hi Conceal guifg=#272727 ctermfg=235 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CursorColumn guifg=NONE ctermfg=NONE guibg=#444444 ctermbg=238 gui=NONE cterm=NONE
hi CursorLine guifg=NONE ctermfg=NONE guibg=#272727 ctermbg=235 gui=NONE cterm=NONE
hi Directory guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=#121212 ctermfg=233 guibg=#afdf87 ctermbg=150 gui=NONE cterm=NONE
hi DiffChange guifg=#ffffaf ctermfg=229 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi DiffDelete guifg=#121212 ctermfg=233 guibg=#df8787 ctermbg=174 gui=NONE cterm=NONE
hi DiffText guifg=#121212 ctermfg=233 guibg=#ffffaf ctermbg=229 gui=NONE cterm=NONE
hi ErrorMsg guifg=#ff8080 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VertSplit guifg=#3a3a3a ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Folded guifg=#272727 ctermfg=235 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi FoldColumn guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi IncSearch guifg=NONE ctermfg=NONE guibg=#333333 ctermbg=236 gui=NONE cterm=NONE
hi LineNr guifg=#9e9e9e ctermfg=247 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NonText guifg=#676566 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Pmenu guifg=#d0d0d0 ctermfg=252 guibg=#252525 ctermbg=235 gui=NONE cterm=NONE
hi PmenuSel guifg=#e6e6e6 ctermfg=254 guibg=#444444 ctermbg=238 gui=NONE cterm=NONE
hi PmenuSbar guifg=NONE ctermfg=NONE guibg=#676566 ctermbg=241 gui=NONE cterm=NONE
hi PmenuThumb guifg=NONE ctermfg=NONE guibg=#d0d0d0 ctermbg=252 gui=NONE cterm=NONE
hi Question guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi QuickFixLine guifg=NONE ctermfg=NONE guibg=#272727 ctermbg=235 gui=NONE cterm=NONE
hi Search guifg=NONE ctermfg=NONE guibg=#333333 ctermbg=236 gui=NONE cterm=NONE
hi SpecialKey guifg=#676566 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellBad guifg=#ff8080 ctermfg=210 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi SpellCap guifg=#d7ba7d ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellLocal guifg=#d7ba7d ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellRare guifg=#d7ba7d ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StatusLine guifg=#d0d0d0 ctermfg=252 guibg=#272727 ctermbg=235 gui=NONE cterm=NONE
hi StatusLineNC guifg=#272727 ctermfg=235 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StatusLineTerm guifg=#d0d0d0 ctermfg=252 guibg=#272727 ctermbg=235 gui=NONE cterm=NONE
hi StatusLineTermNC guifg=#272727 ctermfg=235 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TabLine guifg=#272727 ctermfg=235 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TabLineSel guifg=#585858 ctermfg=240 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TabLineFill guifg=NONE ctermfg=NONE guibg=#222222 ctermbg=235 gui=NONE cterm=NONE
hi Terminal guifg=#d0d0d0 ctermfg=252 guibg=#121212 ctermbg=233 gui=NONE cterm=NONE
hi Visual guifg=NONE ctermfg=NONE guibg=#333333 ctermbg=236 gui=NONE cterm=NONE
hi VisualNOS guifg=#333333 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WarningMsg guifg=#ffffaf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WildMenu guifg=#121212 ctermfg=233 guibg=#87afdf ctermbg=110 gui=NONE cterm=NONE
hi EndOfBuffer guifg=#1c1c1c ctermfg=234 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSComment guifg=#808080 ctermfg=244 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi TSError guifg=#ff8080 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSPunctDelimiter guifg=#df8787 ctermfg=174 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSPunctBracket guifg=#df8787 ctermfg=174 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSPunctSpecial guifg=#df8787 ctermfg=174 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSConstant guifg=#ffffaf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSConstBuiltin guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSConstMacro guifg=#afdf87 ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSStringRegex guifg=#ffffaf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSString guifg=#ffffaf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSStringEscape guifg=#df8787 ctermfg=174 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSCharacter guifg=#ffffaf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSNumber guifg=#d7af87 ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSBoolean guifg=#d7af87 ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSFloat guifg=#d7af87 ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSAnnotation guifg=#afdf87 ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSAttribute guifg=#88c0d0 ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSNamespace guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSFuncBuiltin guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSFunction guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSFuncMacro guifg=#afdf87 ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSParameter guifg=#d0d0d0 ctermfg=252 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSParameterReference guifg=#d0d0d0 ctermfg=252 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSMethod guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSField guifg=#d0d0d0 ctermfg=252 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSProperty guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSConstructor guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSConditional guifg=#afafdf ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSRepeat guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSLabel guifg=#88c0d0 ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSKeyword guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSKeywordFunction guifg=#afafdf ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSKeywordOperator guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSOperator guifg=#afafdf ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSException guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSType guifg=#afafdf ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSTypeBuiltin guifg=#afafdf ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSStructure guifg=#afafdf ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSInclude guifg=#afdf87 ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSVariable guifg=#d0d0d0 ctermfg=252 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSVariableBuiltin guifg=#d0d0d0 ctermfg=252 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSText guifg=#d0d0d0 ctermfg=252 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSStrong guifg=#afdf87 ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSEmphasis guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSUnderline guifg=#df8787 ctermfg=174 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSTitle guifg=#d0d0d0 ctermfg=252 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSLiteral guifg=#808080 ctermfg=244 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSURI guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi TSTag guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSTagDelimiter guifg=#df8787 ctermfg=174 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSQueryLinterError guifg=#ffb870 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlArg guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlBold guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi htmlEndTag guifg=#d0d0d0 ctermfg=252 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH1 guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH2 guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH3 guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH4 guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH5 guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH6 guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlItalic guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi htmlLink guifg=#88c0d0 ctermfg=110 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi htmlSpecialChar guifg=#df8787 ctermfg=174 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlSpecialTagName guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlTag guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlTagN guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlTagName guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlTitle guifg=#d0d0d0 ctermfg=252 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlValue guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownBlockquote guifg=#272727 ctermfg=235 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownBold guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi markdownCode guifg=#afafdf ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownCodeBlock guifg=#d0d0d0 ctermfg=252 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownCodeDelimiter guifg=#df8787 ctermfg=174 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH1 guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH2 guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH3 guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH4 guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH5 guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH6 guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownHeadingDelimiter guifg=#afdf87 ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownHeadingRule guifg=#272727 ctermfg=235 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownId guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownIdDeclaration guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownIdDelimiter guifg=#df8787 ctermfg=174 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownItalic guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi markdownLinkDelimiter guifg=#df8787 ctermfg=174 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownLinkText guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownListMarker guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownOrderedListMarker guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownRule guifg=#272727 ctermfg=235 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrl guifg=#88c0d0 ctermfg=110 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi CocExplorerIndentLine guifg=#777777 ctermfg=243 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferRoot guifg=#ffffaf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileRoot guifg=#ffffaf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferFullPath guifg=#9f9f9f ctermfg=247 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileFullPath guifg=#9f9f9f ctermfg=247 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferReadonly guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferModified guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferNameVisible guifg=#d7af87 ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileReadonly guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileModified guifg=#afdf87 ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileHidden guifg=#676566 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerHelpLine guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi EasyMotionTarget guifg=#ff8080 ctermfg=210 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi EasyMotionTarget2First guifg=#ff8080 ctermfg=210 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi EasyMotionTarget2Second guifg=#ff8080 ctermfg=210 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi EasyMotionShade guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyNumber guifg=#df8787 ctermfg=174 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifySelect guifg=#afdf87 ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyBracket guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifySpecial guifg=#88c0d0 ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyVar guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyPath guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyFile guifg=#88c0d0 ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifySlash guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyHeader guifg=#88c0d0 ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifySection guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
<<<<<<< HEAD
hi Startifyvimter guifg=#afdf87 ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
=======
hi StartifyFooter guifg=#afdf87 ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
>>>>>>> ec8f1ba87053aabf6e469c4ee06afb9ad5ca3b2c
hi WhichKey guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WhichKeySeperator guifg=#afdf87 ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WhichKeyGroup guifg=#6ba8f2 ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WhichKeyDesc guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffAdded guifg=#afdf87 ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffAdd guifg=#afdf87 ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffRemoved guifg=#df8787 ctermfg=174 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffFileId guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=bold,reverse cterm=bold,reverse
hi diffFile guifg=#afafdf ctermfg=146 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffNewFile guifg=#afdf87 ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffOldFile guifg=#df8787 ctermfg=174 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi debugPc guifg=NONE ctermfg=NONE guibg=#88c0d0 ctermbg=110 gui=NONE cterm=NONE
hi debugBreakpoint guifg=#df8787 ctermfg=174 guibg=NONE ctermbg=NONE gui=reverse cterm=reverse
hi GitSignsAdd guifg=#afdf87 ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitSignsChange guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitSignsDelete guifg=#df8787 ctermfg=174 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsUnderlineHint guifg=#808080 ctermfg=244 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsSignError guifg=#ff8080 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsSignWarning guifg=#ffb870 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsSignInformation guifg=#ffcc66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsSignHint guifg=#6ba8f2 ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsVirtualTextError guifg=#ff8080 ctermfg=210 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsVirtualTextWarning guifg=#ffb870 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsVirtualTextInformation guifg=#ffcc66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsVirtualTextHint guifg=#6ba8f2 ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi QuickScopePrimary guifg=#6ba8f2 ctermfg=75 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi QuickScopeSecondary guifg=#df8787 ctermfg=174 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi MatchWord guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi MatchParen guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi MatchWordCur guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi MatchParenCur guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi NvimTreeImageFile guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeGitDirty guifg=#afdf87 ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeGitDeleted guifg=#afdf87 ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeGitStaged guifg=#afdf87 ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeGitMerge guifg=#afdf87 ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeGitRenamed guifg=#afdf87 ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeGitNew guifg=#afdf87 ctermfg=150 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeIndentMarker guifg=#777777 ctermfg=243 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeSymlink guifg=#29b8d8 ctermfg=38 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeFolderIcon guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeRootFolder guifg=#afafaf ctermfg=145 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi NvimTreeExecFile guifg=#23d18b ctermfg=42 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeSpecialFile guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NvimTreeLspDiagnostics guifg=#ffb870 ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi BufferCurrent guifg=#d0d0d0 ctermfg=252 guibg=#1c1c1c ctermbg=234 gui=NONE cterm=NONE
hi BufferCurrentIndex guifg=#87afdf ctermfg=110 guibg=#1c1c1c ctermbg=234 gui=NONE cterm=NONE
hi BufferCurrentMod guifg=#d0d0d0 ctermfg=252 guibg=#1c1c1c ctermbg=234 gui=NONE cterm=NONE
hi BufferCurrentSign guifg=#87afdf ctermfg=110 guibg=#1c1c1c ctermbg=234 gui=NONE cterm=NONE
hi BufferCurrentTarget guifg=#df8787 ctermfg=174 guibg=#1c1c1c ctermbg=234 gui=bold cterm=bold
hi BufferVisible guifg=#d0d0d0 ctermfg=252 guibg=#1c1c1c ctermbg=234 gui=NONE cterm=NONE
hi BufferVisibleIndex guifg=#d0d0d0 ctermfg=252 guibg=#1c1c1c ctermbg=234 gui=NONE cterm=NONE
hi BufferVisibleMod guifg=#d0d0d0 ctermfg=252 guibg=#1c1c1c ctermbg=234 gui=NONE cterm=NONE
hi BufferVisibleSign guifg=#d0d0d0 ctermfg=252 guibg=#1c1c1c ctermbg=234 gui=NONE cterm=NONE
hi BufferVisibleTarget guifg=#df8787 ctermfg=174 guibg=#1c1c1c ctermbg=234 gui=bold cterm=bold
hi BufferInactive guifg=#9e9e9e ctermfg=247 guibg=#2d2d2d ctermbg=236 gui=NONE cterm=NONE
hi BufferInactiveIndex guifg=#9e9e9e ctermfg=247 guibg=#2d2d2d ctermbg=236 gui=NONE cterm=NONE
hi BufferInactiveMod guifg=#9e9e9e ctermfg=247 guibg=#2d2d2d ctermbg=236 gui=NONE cterm=NONE
hi BufferInactiveSign guifg=#9e9e9e ctermfg=247 guibg=#2d2d2d ctermbg=236 gui=NONE cterm=NONE
hi BufferInactiveTarget guifg=#df8787 ctermfg=174 guibg=#2d2d2d ctermbg=236 gui=bold cterm=bold
hi CodiVirtualText guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi IndentBlanklineContextChar guifg=#767a8b ctermfg=244 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DashboardHeader guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DashboardCenter guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Dashboardvimter guifg=#88c0d0 ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WhichKeyFloat guifg=#1c1c1c ctermfg=234 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimwikiHeader1 guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi vimwikiHeader2 guifg=#afdf87 ctermfg=150 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi vimwikiHeader3 guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi vimwikiHeader4 guifg=#88c0d0 ctermfg=110 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi vimwikiHeader5 guifg=#d7ba7d ctermfg=180 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi vimwikiHeader6 guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi vimwikiLink guifg=#6ba8f2 ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimwikiHeaderChar guifg=#272727 ctermfg=235 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimwikiHR guifg=#ffffaf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimwikiList guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimwikiTag guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimwikiMarkers guifg=#272727 ctermfg=235 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DashboardFooter guifg=#88c0d0 ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WhichKeyFloat guifg=#1c1c1c ctermfg=234 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VimwikiHeader1 guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi VimwikiHeader2 guifg=#afdf87 ctermfg=150 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi VimwikiHeader3 guifg=#87afdf ctermfg=110 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi VimwikiHeader4 guifg=#88c0d0 ctermfg=110 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi VimwikiHeader5 guifg=#d7ba7d ctermfg=180 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi VimwikiHeader6 guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi VimwikiLink guifg=#6ba8f2 ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VimwikiHeaderChar guifg=#272727 ctermfg=235 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VimwikiHR guifg=#ffffaf ctermfg=229 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VimwikiList guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VimwikiTag guifg=#dfafdf ctermfg=182 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VimwikiMarkers guifg=#272727 ctermfg=235 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
