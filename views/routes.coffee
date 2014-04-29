@include = ->
	
	@get '/login', (req, res) -> res.render 'login.jade'
	# standard auth required route
	@get '/first-login', @auth, (req, res) -> res.render 'first-login.jade'
	
	@get '/', (req, res) -> res.render 'home.jade'
	# custom authenticated with redirect to appid page, a fictional state where all logged in users have a custom appid url and must be authed to manage
	@get '/:appid/manage*', (req, res, next) ->
		if req.isAuthenticated() then next() else res.redirect 307, "/#{req.params.appid}/"
	, (req, res) -> res.render 'app.jade',
		appId: req.params.appid