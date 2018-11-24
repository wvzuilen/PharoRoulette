resources
tableDataClass
	| classes |
	classes := 'pleinCell ' , self colorClass.
	self isSelected
		ifTrue: [ classes := classes , ' selected' ].
	^ classes