instance creation
isTransversaleTableDataByRow: anRowInteger col: anColInteger
	^ (anRowInteger isDivisibleBy: 2) and: [ #(1 7) includes: anColInteger ]