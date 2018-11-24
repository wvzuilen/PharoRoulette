as yet unclassified
buildDegreesDictionary
	| dic |
	dic := Dictionary new.
	self numberSequenceArray	doWithIndex:
			[ :number :index | dic at: number put: (self degreesByIndex: index) ].
	^ dic