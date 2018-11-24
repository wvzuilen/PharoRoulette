rendering
renderContentOn: html
	html heading level1 with: 'PharoRoulette'.
	(html jQuery id: 'wheel') height: 300.
	html heading level3 with: self wheel currentNumber.
	self renderButtons: html.
	html render: self table.
	html render: self wheel