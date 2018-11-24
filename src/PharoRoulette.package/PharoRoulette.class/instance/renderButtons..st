rendering
renderButtons: html
	html anchor
		callback: [ self wheel roll ];
		with: 'Turn the wheel!'.
	html break.
	html anchor
		callback: [ self wheel reset ];
		with: 'Reset'