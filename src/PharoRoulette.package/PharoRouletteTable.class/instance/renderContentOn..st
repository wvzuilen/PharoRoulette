rendering
renderContentOn: html
	html image
		id: 'table';
		url: 'PharoRouletteStatic/table.svg';
		onClick: (self scriptForClickPositionOn: html).
	html div
		id: 'test';
		with: 'X'

	"(html jQuery ajax callback: [ 1 inspect ])."
	"(html jQuery ajax callback: [ :x | x inspect ] value: JQEvent new pageX)."