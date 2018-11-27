(Smalltalk at: #ZnZincStaticServerAdaptor) startOn: 8088 andServeFilesFrom: '/pharo/static'.

WAAdmin applicationDefaults
    removeParent: WADevelopmentConfiguration instance.
WADispatcher default handlers do: [ :each | WADispatcher default unregister: each ].
(Smalltalk at: #WAAdmin) register: PharoRoulette asApplicationAt: 'PharoRoulette'.
