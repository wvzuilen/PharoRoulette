ZnZincServerAdaptor  startOn: 8088.
ZnZincServerAdaptor default server debugMode: true.
ZnZincServerAdaptor default server logToTranscript.

WAAdmin applicationDefaults
    removeParent: WADevelopmentConfiguration instance.

WADispatcher default handlers do: [ :each | WADispatcher default unregister: each ].

(WAAdmin register: PharoRoulette asApplicationAt: 'image')
    preferenceAt: #serverPath put: '/'.
WAAdmin defaultDispatcher defaultName: 'image'.
