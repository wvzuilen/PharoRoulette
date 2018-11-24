accessing
pleinTableDatas
	^ self matrix asArray
		select: [ :cell | cell class = PharoRoulettePleinTableData ]