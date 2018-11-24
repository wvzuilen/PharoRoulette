initialization
initialize
	"Roulette initialize"
	
	| application |
	application := WAAdmin register: self asApplicationAt: 'Roulette'.
	application preferenceAt: #scriptGeneratorClass put: JQScriptGenerator.
	application addLibrary: JQDeploymentLibrary