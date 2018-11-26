# PharoRoulette (Work in progress !)

This project has started during the ESUG 2017. Inspired by the many speakers I wanted to learn more about web development using Seaside and in particular using callbacks.

Rien ne va plus !

As this is a learning experience, below my findings:
At first I had the idea to build a Roulette table made of seperate div's but this was too time-consuming. So I looked for an alternative... using a SVG image of a Roulette table I detect the relative position of the mouse click event. Using casscaded `callback: value:` messages I collect all the necessary attributes.

```Smalltalk
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
```

Metacello load script:
```Smalltalk
Metacello new
 baseline:'PharoRoulette';
 repository: 'github://wvzuilen/PharoRoulette:master/src';
 load.
```
