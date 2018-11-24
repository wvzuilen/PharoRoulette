building
buildMatrix
	| matrix |
	matrix := Matrix rows: 25 columns: 7.
	matrix indicesDo: [ :row :col | matrix at: row at: col put: (PharoRouletteTableData createFromRow: row col: col) ].
	^ matrix