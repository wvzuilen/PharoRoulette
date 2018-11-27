baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec baseline: 'Seaside3' with: [ spec repository: 'github://SeasideSt/Seaside/repository' ].
			spec baseline: 'Seaside3' with: [ spec repository: 'github://SeasideSt/Seaside/repository' ].
			spec package: 'PharoRoulette' with: [ spec requires: #('Seaside3') ] ]