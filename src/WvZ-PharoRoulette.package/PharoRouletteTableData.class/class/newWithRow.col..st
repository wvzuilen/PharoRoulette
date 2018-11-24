instance creation
newWithRow: anRowInteger col: anColInteger
	| instance |
	instance := self new
		row: anRowInteger;
		col: anColInteger.
	self = PharoRoulettePleinTableData
		ifTrue: [ instance number: (self numberFromRow: anRowInteger andCol: anColInteger) ].
	^ instance