updating
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	anHtmlRoot title: 'PharoRoulette'.
	anHtmlRoot stylesheet url: self class staticFolder , '/style.css'.
	anHtmlRoot stylesheet url: 'https://fonts.googleapis.com/css?family=Josefin+Sans'.
	anHtmlRoot script url: 'https://code.jquery.com/jquery-3.3.1.min.js'.