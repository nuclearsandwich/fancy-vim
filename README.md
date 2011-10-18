# fancy.vim
*Syntax highlighting, and eventually plugin, for the [Fancy][F] programming
language.*

### Version: 0.3 Updated 17 October 2011

## Installation
This plugin is meant to be installed with [pathogen][P].
Simply clone it into your bundle directory and you're good to go!

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
- Block arguments
- Regular Expressions (as strings)

## What Needs Work
- Syntax Highlighting
	- Method Selectors
	- Method Sends
	- Interpolated Strings
	- Regexp Internals
	- Regexp flags
	- Regexp interpolation
	- Async
	- Futures
- Indentation
	- Indenting Block Openings
	- De-indenting Block Closes
- And all the stuff I haven't seen or thought of yet.

## Interesting notes about Fancy identifiers and symbols.
Valid characters for symbols := `% ^ & * - + = : | < > [ ] ? ! ~`
Valid characters for identifiers := `% ^ & * - + = < > ? ! ~`

[F]: http://fancy-lang.org
[P]: https://github.com/tpope/vim-pathogen
