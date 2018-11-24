rendering
renderTableCellForRow: anRowInteger col: anColInteger on: html
	html render: (self matrix at: anRowInteger at: anColInteger)