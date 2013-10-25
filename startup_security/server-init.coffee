@include = ->
	helmet = require 'helmet'
	
	@configure =>
		@set 'view engine': 'jade'
		@use require('connect-assets')()
		@use helmet.xframe(), helmet.iexss(), helmet.contentTypeOptions(), helmet.cacheControl()
		@use @express.json(), @express.urlencoded()
		@use 'methodOverride'
		@use @express.cookieParser()
		###@use @express.session
			secret: 'bigkeyhere'
			cookie:
				httpOnly: true
				secure: true
		@use @express.csrf()
		@app.use (req, res, next) ->
			res.locals.csrftoxen = req.session._csrf
			next()###
		@use 'static'