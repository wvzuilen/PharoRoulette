rendering
renderContentOn: html
	html div
		with: [ html heading level1 with: 'PharoRoulette'.
			html render: self table ].