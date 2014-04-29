auth0 = require './../startup_security/auth0'
{admin_nano: _nano, nano} = require './../startup_security/nano'

# HTTP routes go here

@include = ->
	#use @post,@on etc here for requests to and from the API
	return

#Sockets handlers go here

@publicio = ->
		
@privateio = (ctx) ->
	# @ is the socket instance
	@on 'socket-event', (data) =>
		# @context.publicio.in(@client.room).emit event, data
		# @emit event, data