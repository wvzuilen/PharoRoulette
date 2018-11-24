accessing
currentNumber: aNumber
	(aNumber between: 0 and: 36)
		ifTrue: [ currentNumber := aNumber ]