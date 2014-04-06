'use strict'

module.exports = (grunt) ->
	grunt.loadNpmTasks 'grunt-release'
	grunt.loadNpmTasks 'grunt-contrib-watch'
	grunt.loadNpmTasks 'grunt-conventional-changelog'
	
	plugins = ['karma-mocha']
	browsers = []
	
	if process.env.TRAVIS
		plugins.push 'karma-firefox-launcher'
		browsers.push 'Firefox'
	else
		plugins.push 'karma-chrome-launcher'
		browsers.push 'Chrome'
	
	grunt.initConfig
		pkg: grunt.file.readJSON 'package.json'
		
		changelog:
			options:
				dest: 'CHANGELOG.md'
		
		karma:
			options:
				configFile: 'karma.conf.coffee'
				runnerPort: 9999
				browsers: ['Chrome']
			continuous:
				background: true
				browsers: ['PhantomJS']
			dev:
				browsers: ['PhantomJS']
		mochacli:
			files: 'test/server/**/*.spec.coffee'
			reporter: 'nyan'
		release:
			options:
				npmtag: true
	
	grunt.loadTasks 'tasks'
	
	grunt.registerTask 'test', ['karma:dev','mochacli']
	grunt.registerTask 'default', ['test']