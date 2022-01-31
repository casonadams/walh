syn match rustComma ","
syn match rustSemicolon ";"
syn match rustTypeParameter "\<\u\>"
syn keyword rustAs as
syn match rustConst "\<\(\u\|_\)\+\(\u\|_\|\d\)\+\>"
syn match rustVarField "\.\_s\{-}\zs\<\I\i*\>\(\_s\{-}(\)\@!"
syn match rustFieldIndent "\v\zs<\w+>\ze:\s.*([^;{])$"
