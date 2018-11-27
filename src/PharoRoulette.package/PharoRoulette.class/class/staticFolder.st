as yet unclassified
staticFolder
	^ OSProcess thisOSProcess environment at: #PHAROROULETTE_STATIC ifAbsent: 'PharoRouletteStatic'