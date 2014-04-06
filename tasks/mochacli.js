'use strict';

var mocha = require('mocha');


module.exports = function (grunt) {
	grunt.registerMultiTask('mochacli', 'Run Mocha server-side tests.', function () {
		mocha({}, this.async());
		var options = this.options();
		var globs = [];

		// Use the Grunt files format if the `files` option isn't set
		if (!options.files) {
			this.files.forEach(function (glob) {
				globs = globs.concat(glob.orig.src);
			});
			options.files = globs;
		}
		
		mocha(options, this.async());
	});
};
