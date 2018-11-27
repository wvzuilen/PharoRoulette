rendering
renderClickScriptOn: html
	^ html jQuery ajax
		callback: [ :x | self pointer x: x asInteger ] value: JQEvent new pageX;
		callback: [ :y | self pointer y: y asInteger ] value: JQEvent new pageY;
		callback: [ :l | self offsetLeft: l asInteger ] value: html jQuery this offsetLeft;
		callback: [ :t | self offsetTop: t asInteger ] value: html jQuery this offsetTop;
		onSuccess: ((html jQuery id: 'pointerDiv') load html: [ :r | self renderPointerOn: r ])