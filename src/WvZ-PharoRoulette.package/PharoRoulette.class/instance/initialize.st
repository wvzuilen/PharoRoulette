initialization
initialize
	super initialize.
	wheel := PharoRouletteWheel new game: self.
	table := PharoRouletteTable new