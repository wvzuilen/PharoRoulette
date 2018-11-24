instance creation
createFromRow: anRowInteger col: anColInteger
	anRowInteger = 1
		ifTrue: [ ^ PharoRouletteEmptyTableData newWithRow: anRowInteger col: anColInteger ].
	(self isPleinTableDataByRow: anRowInteger col: anColInteger)
		ifTrue: [ ^ PharoRoulettePleinTableData newWithRow: anRowInteger col: anColInteger ].
	(self isChevalTableDataByRow: anRowInteger col: anColInteger)
		ifTrue: [ ^ PharoRouletteChevalTableData newWithRow: anRowInteger col: anColInteger ].
	(self isTransversaleTableDataByRow: anRowInteger col: anColInteger)
		ifTrue: [ ^ PharoRouletteTransversaleTableData newWithRow: anRowInteger col: anColInteger ].
	(self isTransversaleSimpleTableDataByRow: anRowInteger col: anColInteger)
		ifTrue: [ ^ PharoRouletteTransversaleSimpleTableData newWithRow: anRowInteger col: anColInteger ].
	(self isCarreTableDataByRow: anRowInteger col: anColInteger)
		ifTrue: [ ^ PharoRouletteCarreTableData newWithRow: anRowInteger col: anColInteger ].
	^ PharoRouletteEmptyTableData newWithRow: anRowInteger col: anColInteger