# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Template.create(
	name: 'light',
	css: [
		{ body: 'color:blue;' },
		{ h1: 'color:red'}
	],
	html: '<h1>Hello World</h1> <p>testtesttest</p>'
	)

	Section.create(
		name: 'light',
		template_id: 1,
		css: [
			{ body: 'color:blue;' },
			{ h1: 'color:red'}
		],
		html: '<h1>Hello World</h1> <p>testtesttest</p>'
		)
