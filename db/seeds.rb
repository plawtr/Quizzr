# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

questions =  Question.create([{ body: 'Is pi greater than three?', answer: 'true' },
            	                { body: 'Is the pope catholic?',  answer: 'true' },
            	                { body: 'Is Belfast the captital of Ireland?',  answer: 'false' },
            	                { body: "Is Aston Martin James Bond's first car?" ,  answer: 'false' },
            	                { body: 'Was Clint Eastwood star of The Magnificent Seven?',  answer: 'false' },
            	                { body: 'Has Bradley Wiggins won the Tour de France?',  answer: 'true' }	])
