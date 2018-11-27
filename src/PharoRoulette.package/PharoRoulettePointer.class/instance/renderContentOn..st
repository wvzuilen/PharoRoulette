rendering
renderContentOn: html
	html div
		id: 'pointer';
		script:
			(html jQuery this
				cssAt: 'top' put: self top asString , 'px';
				cssAt: 'left' put: self left asString , 'px')