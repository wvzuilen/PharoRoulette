rendering
scriptForClickPositionOn: html
	| pageX pageY left top height |
	^ html jQuery ajax
		callback: [ :x | pageX := x ] value: JQEvent new pageX;
		callback: [ :y | pageY := y ] value: JQEvent new pageY;
		callback: [ :l | left := l ] value: html jQuery this offsetLeft;
		callback: [ :t | top := t ] value: html jQuery this offsetTop;
		callback: [ :h | height := h ] value: html jQuery this height;
		callback: [ :w | 
			PharoRouletteClickPosition
				x: pageX
				y: pageY
				left: left
				top: top
				height: height
				width: w ]
			value: html jQuery this width