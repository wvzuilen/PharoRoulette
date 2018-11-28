rendering
renderContentOn: html
	html image
		id: self class id;
		url: (PRFileLibrary urlOf: #tableSvg);
		onClick: (self renderClickScriptOn: html).
	html div
		id: 'pointerDiv';
		with: [ self renderPointerOn: html ]