Meteor.startup ->
	instance =
		host: 'localhost'
		port: process.env.PORT

	if process.env.NETWORK_ADDRESS
		instance.host = process.env.NETWORK_ADDRESS

	InstanceStatus.registerInstance('rocket.chat', instance)
	# InstanceStatus.activeLogs()
	UserPresence.start()
	# UserPresence.activeLogs()
	UserPresenceMonitor.start()
