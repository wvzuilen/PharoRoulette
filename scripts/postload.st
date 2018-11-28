ZnZincServerAdaptor  startOn: 8080.
ZnZincServerAdaptor default server debugMode: true.
ZnServer default logToStandardOutput.

WAAdmin applicationDefaults
    removeParent: WADevelopmentConfiguration instance.

WADispatcher default handlers do: [ :each | WADispatcher default unregister: each ].

(WAAdmin register: PharoRoulette asApplicationAt: 'image')
    preferenceAt: #serverPath put: '/'.
WAAdmin defaultDispatcher defaultName: 'image'.
