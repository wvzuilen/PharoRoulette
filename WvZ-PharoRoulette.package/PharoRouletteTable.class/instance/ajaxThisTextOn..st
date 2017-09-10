rendering
ajaxThisTextOn: html
	^ html jQuery ajax
		callback: [ :x | x inspect ]
		value: (html jQuery this text)