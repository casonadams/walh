syn match goExtraType /\<bytes\.\(Buffer\)\>/
syn match goExtraType /\<io\.\(Reader\|Writer\|ReadWriter\|ReadWriteCloser\)\>/
syn match goExtraType /\<reflect\.\(Kind\|Type\|Value\)\>/
syn match goExtraType /\<unsafe\.Pointer\>/
syn match goOperator display "\%(+\|-\|/\|*\|=\|\^\|&\||\|!\|>\|<\|%\|:\)=\?"
syn match goPackage "\.\_s\{-}\zs\<\I\i*\>\(\_s\{-}\)"

syn keyword goConstants iota true false nil
