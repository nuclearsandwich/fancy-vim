# fancy.vim
*Syntax highlighting, and eventually plugin, for the [Fancy][F] programming
language.*
G
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
- Conditional message selectors
	- `if:then:`, `if:then:else:`, `unless:then:`, `unless:then:else`, `if_true:`,
		`if_false:`
- Loop message selectors
	- `while:do:`, `until:do:`, `loop:`
- Blocks
	- `{ .. }` are recognized but nothing is done with them as yet
- Literal Strings (without interpolation)
- Literal Numbers
- Literal Symbols
- Here Documents
- Comments
- Slots (instance and class variables)
- Dynamically scoped variables (`*stdin*, *stdout*, *stderr*)

## Nasty Gotchas
Valid characters for symbols := `% ^ & * - + = : | < > [ ] ? ! ~`
Valid characters for identifiers := `% ^ & * - + = < > ? ! ~`

## What Needs Work
- Indenting Block Openings
- De-indenting Block Closes
- Block arguments
- Method Selectors
- Method Sends
- Interpolated Strings
- Async
- Futures
- And all the stuff I haven't seen or thought of yet.

## Installation
This plugin is meant to be installed with [pathogen][P]

[F]: http://fancy-lang.org
[P]: https://github.com/tpope/vim-pathogen
