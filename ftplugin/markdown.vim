call walh#hi('markdownItalic', walh#colors.grey, '', 'italic')
call walh#hi('markdownLink', walh#colors.grey, '', 'underline')

call walh#hi('markdownH1', walh#colors.green, '', 'bold')
call walh#hi('markdownH2', walh#colors.green, '', 'bold')
call walh#hi('markdownH3', walh#colors.yellow, '', 'bold')
call walh#hi('markdownH4', walh#colors.yellow, '', 'bold')
call walh#hi('markdownH5', walh#colors.yellow)
call walh#hi('markdownH6', walh#colors.yellow)

call walh#hi('markdownCode', walh#colors.cyan)
call walh#hi('markdownCodeBlock', walh#colors.cyan)
call walh#hi('markdownCodeDelimiter', walh#colors.orange)

call walh#hi('markdownBlockquote', walh#colors.grey)
call walh#hi('markdownListMarker', walh#colors.grey)
call walh#hi('markdownOrderedListMarker', walh#colors.grey)
call walh#hi('markdownRule', walh#colors.grey)
call walh#hi('markdownHeadingRule', walh#colors.grey)

call walh#hi('markdownUrlDelimiter', walh#colors.grey)
call walh#hi('markdownLinkDelimiter', walh#colors.grey)
call walh#hi('markdownLinkTextDelimiter', walh#colors.grey)

call walh#hi('markdownHeadingDelimiter', walh#colors.orange)
call walh#hi('markdownUrl', walh#colors.magenta)
call walh#hi('markdownUrlTitleDelimiter', walh#colors.green)

call walh#hi('markdownIdDeclaration', walh#colors.green)
hi! link markdownIdDeclaration markdownLinkText
