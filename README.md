# PharoRoulette (Work in progress !)

This project has started during the ESUG 2017. Inspired by the many speakers I wanted to learn more about web development using Seaside and in particular using callbacks.

Rien ne va plus !

![PharoRoulette table](./table.svg.svg)


As this is a learning experience, below my findings:
* At first I had the idea to build a Roulette table made of seperate div's but this was too time-consuming. So I looked for an alternative... using a SVG image of a Roulette table I detect the relative position of the mouse click event. Using casscaded `callback: value:` messages I collect all the necessary attributes:

```Smalltalk
scriptForClickPositionOn: html
	| pos |
	pos := PharoRouletteClickPosition new.
	^ html jQuery ajax
		callback: [ :mouseX | pos mouseX: mouseX ] value: JQEvent new pageX;
		callback: [ :mouseY | pos mouseY: mouseY ] value: JQEvent new pageY;
		callback: [ :tableLeft | pos tableLeft: tableLeft ] value: html jQuery this offsetLeft;
		callback: [ :tableTop | pos tableTop: tableTop ] value: html jQuery this offsetTop;
		callback: [ :tableHeight | pos tableHeight: tableHeight ] value: html jQuery this height;
		callback: [ :tableWidth | pos tableWidth: tableWidth ] value: html jQuery this width;
		callback: [ pos logToTranscript ]
```

Note to myself: http://pillarhub.pharocloud.com/hub/mikefilonov/ajaxupdateseaside

Metacello load script:
```Smalltalk
Metacello new
 baseline:'PharoRoulette';
 repository: 'github://wvzuilen/PharoRoulette:master/src';
 load.
```
