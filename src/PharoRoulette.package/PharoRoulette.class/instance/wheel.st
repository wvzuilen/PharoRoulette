accessing
wheel
	^ wheel ifNil: [ wheel := PharoRouletteWheel new ]