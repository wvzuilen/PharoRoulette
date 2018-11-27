# PharoRoulette Alpha

This project has started during the ESUG 2017. Inspired by the many speakers I wanted to learn more about web development using Seaside and in particular using callbacks.

#### _Rien ne va plus !_

![PharoRoulette table](./table.svg)

As this is a learning experience, below my findings:

### Detecting click input
At first I had the idea to build a Roulette table made of seperate div's but this was too time-consuming. So I looked for an alternative... using a SVG image of a Roulette table I detect the relative position of the mouse click event. Using casscaded `callback: value:` messages I collect all the necessary attributes:

```Smalltalk
renderClickScriptOn: html
	^ html jQuery ajax
		callback: [ :x | self pointer x: x asInteger ] value: JQEvent new pageX;
		callback: [ :y | self pointer y: y asInteger ] value: JQEvent new pageY;
		callback: [ :l | self offsetLeft: l asInteger ] value: html jQuery this offsetLeft;
		callback: [ :t | self offsetTop: t asInteger ] value: html jQuery this offsetTop.
```
### Processing and responding
After the click attributes are received, the backend determines which part of the table is clicked. To confirm the result I want to show a pointer at the spot where the table is clicked.

Note to myself: http://pillarhub.pharocloud.com/hub/mikefilonov/ajaxupdateseaside

### Metacello load script
```Smalltalk
Metacello new
 baseline:'PharoRoulette';
 repository: 'github://wvzuilen/PharoRoulette:master/src';
 load.
```
