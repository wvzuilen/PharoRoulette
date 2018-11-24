instance creation
isTransversaleSimpleTableDataByRow: anRowInteger col: anColInteger
	^ (anRowInteger isDivisibleBy: 2) not and: [ #(1 7) includes: anColInteger ]