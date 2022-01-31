set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "levuaska"
hi Normal       cterm=NONE          ctermfg=007
hi Comment	    cterm=italic		ctermfg=DarkGrey
hi Constant	    cterm=bold	        ctermfg=004
hi Special	    cterm=NONE	    	ctermfg=004
hi Identifier   cterm=NONE	        ctermfg=004
hi Statement    cterm=NONE		    ctermfg=003    
hi PreProc	    cterm=NONE	    ctermfg=012	    
hi Type	        cterm=NONE		    ctermfg=LightGreen	
hi Function	    cterm=bold		    ctermfg=007       
hi Repeat	    cterm=NONE	    ctermfg=007		
hi Operator				            ctermfg=001			 
hi Ignore				            ctermfg=black	
hi Error	    cterm=bold          ctermfg=001         ctermbg=NONE
hi Todo	        cterm=standout      ctermbg=Black       ctermbg=Yellow 
hi LineNr                           ctermfg=DarkGrey
hi CursorLineNr cterm=bold          ctermfg=004
hi CursorLine                       ctermfg=004
hi TabLineFill  cterm=NONE          ctermfg=004         ctermbg=NONE
hi TabLine      cterm=NONE          ctermfg=007         ctermbg=NONE
hi TabLineSel   cterm=bold          ctermfg=234         ctermbg=Blue
hi VertSplit    cterm=NONE          ctermfg=DarkGrey    ctermbg=NONE
hi ErrorMsg     cterm=NONE          ctermfg=009         ctermbg=NONE
hi WarningMsg   cterm=NONE          ctermfg=009         ctermbg=NONE
hi IncSearch    cterm=bold          ctermfg=Black       ctermbg=012
hi Directory    cterm=NONE          ctermfg=Grey
hi NERDTreeCWD                      ctermfg=003
hi MatchParen   cterm=bold          ctermfg=003         ctermbg=NONE
hi NonText      cterm=NONE          ctermfg=000
hi Visual       cterm=bold          ctermfg=004         ctermbg=NONE
hi Folded       cterm=bold          ctermfg=004         ctermbg=000
hi StartifyBracket                  ctermfg=004
hi StartifyFile                     ctermfg=004
hi StartifyFooter                   ctermfg=004
hi StartifyHeader                   ctermfg=012
hi StartifyNumber                   ctermfg=007
hi StartifyPath                     ctermfg=Grey
hi StartifySlash                    ctermfg=004
hi StartifySpecial                  ctermfg=004





" Common groups that link to default highlighting.
" You can specify other highlighting easily.
hi link String	Constant
hi link Character	Constant
hi link Number	Constant
hi link Boolean	Constant
hi link Float		Number
hi link Conditional	Repeat
hi link Label		Statement
hi link Keyword	Statement
hi link Exception	Statement
hi link Include	PreProc
hi link Define	PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type
hi link Tag		Special
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment Special
hi link Debug		Special
hi link htmlTagName Special
hi link djangoStatement Constant

