assert = require('chai').assert
expect = require('chai').expect
should = require('chai').should()

describe 'karma tests with chai', ->
	
	it 'should expose the Chai assert method', ->
		assert.ok('everything', 'everything is ok');
	
	it 'should expose the Chai expect method', ->
		expect('foo').to.not.equal 'bar'
	
	it 'should expose the Chai should property', ->
		1.should.not.equal 1
		should.exist 123

describe 'grunt-mocha', ->
	describe 'one', ->
		it 'should be awesome', ->
			'foo'.should.be.a 'string'
	describe 'two', ->
		it 'should be equally awesome', ->
			'woot'.should.be.a 'string'