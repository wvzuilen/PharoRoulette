scriptForClickPositionOn: html
	| pos |
	pos := PharoRouletteClickPosition new.
	^ html jQuery ajax
		callback: [ :x | pos x: x ] value: JQEvent new pageX;
		callback: [ :y | pos y: y ] value: JQEvent new pageY;
		callback: [ :l | pos left: l ] value: html jQuery this offsetLeft;
		callback: [ :t | pos top: t ] value: html jQuery this offsetTop;
		callback: [ :h | pos height: h ] value: html jQuery this height;
		callback: [ :w | pos width: w ] value: html jQuery this width;
		callback: [ pos logToTranscript ]