# Karma configuration
# Generated on Thu Dec 12 2013 17:06:58 GMT+1300 (NZDT)

module.exports = (config) ->
	config.set
		
		# base path, that will be used to resolve all patterns, eg. files, exclude
		basePath: ''
		
		# frameworks to use
		frameworks: ['mocha','chai']
		
		# list of files / patterns to load in the browser
		files: [
			'assets/js/*.coffee',
			'test/front-end/**/*.spec.coffee'
		]
		
		# list of files to exclude
		exclude: [
			
		]
		
		# test results reporter to use
		# possible values: 'dots', 'progress', 'junit', 'growl', 'coverage'
		reporters: ['dots']
		
		# web server port
		port: 9876
		
		# enable / disable colors in the output (reporters and logs)
		colors: true
		
		# level of logging
		# possible values: config.LOG_DISABLE || config.LOG_ERROR || config.LOG_WARN || config.LOG_INFO || config.LOG_DEBUG
		logLevel: config.LOG_INFO
		
		# enable / disable watching file and executing tests whenever any file changes
		autoWatch: true
		
		# Start these browsers, currently available:
		# - Chrome
		# - ChromeCanary
		# - Firefox
		# - Opera (has to be installed with `npm install karma-opera-launcher`)
		# - Safari (only Mac; has to be installed with `npm install karma-safari-launcher`)
		# - PhantomJS
		# - IE (only Windows; has to be installed with `npm install karma-ie-launcher`)
		browsers: ['Chrome']
		
		# If browser does not capture in given timeout [ms], kill it
		captureTimeout: 60000
		
		# Continuous Integration mode
		# if true, it capture browsers, run tests and exit
		singleRun: true
