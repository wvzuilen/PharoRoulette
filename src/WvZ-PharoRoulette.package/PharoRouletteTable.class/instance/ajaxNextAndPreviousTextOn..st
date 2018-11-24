rendering
ajaxNextAndPreviousTextOn: html
	^ html jQuery ajax
		callback: [ :x | x inspect ]
		value:
			(html jQuery this
				nextAll: 'td.numberCell';
				eq: 0;
				text)