rendering
renderContentOn: html
	html image
		id: self class id;
		url: 'static/table.svg';
		onClick: (self renderClickScriptOn: html).
	html div
		id: 'pointerDiv';
		with: [ self renderPointerOn: html ]