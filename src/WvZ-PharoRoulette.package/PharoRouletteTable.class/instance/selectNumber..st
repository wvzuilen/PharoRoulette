actions
selectNumber: aInteger
	(self pleinTableDatas detect: [ :tableData | tableData number = aInteger ]) beSelected