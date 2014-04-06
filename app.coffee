### use this for HTTPS
require('zappajs') 3443, https:
	key: fs.readFileSync 'path/to/key.pem'
	cert: fs.readFileSync 'path/to/cert.pem'
, ->
###

require('zappajs') ->
	@on "error": ->
		console.log @data
		console.log @data.stack
	@include './startup_security/server-init'
	@include './routes'