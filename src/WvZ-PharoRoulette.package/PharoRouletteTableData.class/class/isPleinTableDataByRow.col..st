instance creation
isPleinTableDataByRow: anRowInteger col: anColInteger
	^ (anRowInteger isDivisibleBy: 2) and: [ anColInteger isDivisibleBy: 2 ]