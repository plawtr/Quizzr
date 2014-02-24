# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

questions =  Question.create([{ question: 'Is pi greater than three?', answer: 'true' },
            	                { question: 'Is the pope catholic?' ,  answer: 'true' },
            	                { question: 'Is Belfast the captital of Ireland?' ,  answer: 'false' },
            	                { question: "Is Aston Martin James Bond's first car?" ,  answer: 'false' },
            	                { question: 'Was Clint Eastwood star of The Magnificent Seven?' ,  answer: 'false' },
            	                { question: 'Has Bradley Wiggins won the Tour de France?' ,  answer: 'true' }	])
