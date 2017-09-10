instance creation
isChevalTableDataByRow: anRowInteger col: anColInteger
	^ ((anRowInteger isDivisibleBy: 2) and: [ #(3 5) includes: anColInteger ])
		or: [ (anRowInteger isDivisibleBy: 2) not and: [ #(2 4 6) includes: anColInteger ] ]