accessing
degreesDictionary
	^ DegreesDictionary ifNil:
		[ DegreesDictionary := self buildDegreesDictionary ]