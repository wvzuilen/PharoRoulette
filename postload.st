(Smalltalk at: #ZnZincServerAdaptor) startOn: 8088.

WAAdmin applicationDefaults
    removeParent: WADevelopmentConfiguration instance.
WADispatcher default handlers do: [ :each | WADispatcher default unregister: each ].
(Smalltalk at: #WAAdmin) register: VeryNiceDemo asApplicationAt: 'PharoRoulette'.
