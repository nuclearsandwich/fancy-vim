# fancy.vim
*Syntax highlighting, and eventually plugin, for the [Fancy][F] programming
language.*

## What Works

- Keywords
	- `class`
	- `def`
	- `try`
	- `catch`
	- `finally`
	- `retry`
	- `return`
	- `return_local`
	- `require:`
	- `match`
	- `->`
	- `=>`
	- `case`
- Constants
- Special Variables
	`- `true`, `false`, `nil`, `self`, `super`
- Blocks
	- `{ .. }` are recognized but nothing is done with them as yet
- Literal Strings (without interpolation)
- Literal Numbers
- Literal Symbols
- Here Documents


## What Needs Work
- Comments
- Instance Variables
- Class Variables
- Indenting Block Openings
- De-indenting Block Closes
- Block arguments
- Method Selectors
- Method Sends
- Interpolated Strings
- And all the stuff I haven't seen or thought of yet.


[F]: http://fancy-lang.org
