rendering
ajaxNextTextOn: html
	^ html jQuery ajax
		callback: [ :x | x inspect ]
		value: (html jQuery this next text)