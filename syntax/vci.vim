" Vim syntax file
" Language      vci description files

if exists("b:current_syntax")
  finish
endif

syn keyword cKeyword struct vc vcip project_name const field enum
syn match Type "bv<.*>" contains=@NoSpell
syn match Type "uint<.*>" contains=@NoSpell
syn match Type "int<.*>" contains=@NoSpell
syn keyword Type std_logic bool
syn keyword Title datamodel
syn keyword Title busprotocol

syn match cComment "//.*$" contains=@Spell
syn match cDefine  "--.*" contains=@Spell
syn match SpecialComment   "--!.*$" contains=@Spell

if version >= 508 || !exists("did_ari_syntax_inits")
  if version < 508
    let did_ari_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink cKeyword Statement
  HiLink cComment Comment
  HiLink cTodo Todo
  HiLink cDefine Define

  delcommand HiLink
endif

let b:current_syntax = "vim"
