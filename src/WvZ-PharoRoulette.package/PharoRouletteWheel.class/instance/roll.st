actions
roll
	self game table unselectAll.
	self currentNumber: (1 to: 36) atRandom. "No zero until supported"
	self game table selectNumber: currentNumber