rendering
renderContentOn: html
	html image
		id: self class id;
		url: self class imageUrl;
		onClick: (self renderClickScriptOn: html).
	html div
		id: 'pointerDiv';
		with: [ self renderPointerOn: html ]