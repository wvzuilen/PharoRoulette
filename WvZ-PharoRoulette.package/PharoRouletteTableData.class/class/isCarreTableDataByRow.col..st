instance creation
isCarreTableDataByRow: anRowInteger col: anColInteger
	^ (anRowInteger isDivisibleBy: 2) not and: [ #(3 5) includes: anColInteger ]