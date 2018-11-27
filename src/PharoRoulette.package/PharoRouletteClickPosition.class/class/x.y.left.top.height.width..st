instance creation
x: anX y: anY left: aLeft top: aTop height: aHeight width: aWidth
	^ self basicNew
		x: anX;
		y: anY;
		left: aLeft;
		top: aTop;
		height: aHeight;
		width: aWidth;
		initialize;
		yourself