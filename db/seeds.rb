# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying all users, games, plays, questions, answers, useranswers"
Answer.destroy_all
UserAnswer.destroy_all
Question.destroy_all
Play.destroy_all
Game.destroy_all
User.destroy_all


#<User id: nil, email: "", created_at: nil, updated_at: nil, pseudo: nil, age: nil, coliving: nil, country: nil, avatar: nil, waterprint: nil>

user1 = User.create!({
email: 'toto',
password: '123456',
pseudo: 'toto',
age: '32',
coliving: 'true',
country: 'France',
avatar: 'photo.png',
waterprint: '1000',
admin: true
})
p user1

user2 = User.create!({
email: 'nana',
password: '234567',
pseudo: 'nana',
age: '21',
coliving: 'false',
country: 'France',
avatar: 'picture.png',
waterprint: '3000',
})
p user2

user3 = User.create!({
email: 'lili',
password: '345678',
pseudo: 'lili',
age: '43',
coliving: 'true',
country: 'France',
avatar: 'image.png',
waterprint: '7000',
})
p user3


#<Game:0x00007fa13851a488 id: nil, user_id: nil, name: nil, code: nil, current_step: nil, created_at: nil, updated_at: nil>

game1 = Game.create!({
user: user1,
name: 'Water battle',
code: '333',
current_step: 1
})
p game1


# <Play:0x00007fa1387c2fa0 id: nil, game_id: nil, user_id: nil, score: 0, eliminated: false, created_at: nil, updated_at: nil>
# Will be generated, no seed required!!!

play1 = Play.create!({
game: game1,
user: user1,
score: 0,
eliminated: false,
})
p play1


#<Question:0x00007fa137567478 id: nil, game_id: nil, content: nil, kind: nil, step: nil, created_at: nil, updated_at: nil>

#step 1 multiple-choice

question1 = Question.create!({
game: game1,
content: 'How much water are you using when buying another pair of jeans?',
kind: 'multiple-choice',
step: 1,
played: false,
})
p question1

question2 = Question.create!({
game: game1,
content: 'What is the water footprint of a pair of leather sneakers?',
kind: 'multiple-choice',
step: 2,
played: false,
})
p question2

question3 = Question.create!({
game: game1,
content: 'A round-trip Paris-Barcelona flight in water is…',
kind: 'multiple-choice',
step: 3,
played: false,
})
p question3


# step 2 true-false

question4 = Question.create!({
game: game1,
content: '1 hamburger = 100gr chocolate bar = 50% of the French person’s daily water footprint of 4,900 liters.',
kind: 'true-false',
step: 4,
played: false,
})
p question4

question5 = Question.create!({
game: game1,
content: '1 glass of milk = 1 glass of apple juice = 7 expressos = 1,000 glasses of water.',
kind: 'true-false',
step: 5,
played: false,
})
p question5

# <Answer:0x00007fa1374258a8 id: nil, question_id: nil, content: nil, correct: false, position: nil, created_at: nil, updated_at: nil>

#step 1 multiple-choice
#answers_to_question1
#content: 'What happened on the 28th of July 2010?'

answer1 = Answer.create!({
question: question1,
content: "350 L = 1 polyester T-shirt",
correct: false,
position: 1,
})
p answer1

answer2 = Answer.create!({
question: question1,
content: "2,750 L = 1 cotton T-shirt",
correct: false,
position: 2,
})
p answer2

answer3 = Answer.create!({
question: question1,
content: "10,850 L which is almost as much as a smartphone (12,060 L)",
correct: true,
position: 3,
})
p answer3

#step 1 multiple-choice
#answers_to_question2
#content: 'Who is Malin Falkenmark?'

answer4 = Answer.create!({
question: question2,
content: "80 L = 1 glass of beer",
correct: false,
position: 1,
})
p answer4

answer5 = Answer.create!({
question: question2,
content: "800 L = 3.5 avocados",
correct: false,
position: 2,
})
p answer5

answer6 = Answer.create!({
question: question2,
content: "8,000 L = 200 bread slices",
correct: true,
position: 3,
})
p answer6


#step 1 multiple-choice
#answers_to_question3
#content: 'What is the water footprint?'

answer7 = Answer.create!({
question: question3,
content: "5,600 L  = 6 bottles of wine",
correct: false,
position: 1,
})
p answer7

answer8 = Answer.create!({
question: question3,
content: "56,000 L = 3,700 dishwasher loads",
correct: true,
position: 2,
})
p answer8

answer9 = Answer.create!({
question: question3,
content: "560,000 L = manufacturing of 7 cars ",
correct: false,
position: 3,
})
p answer9

#step 2 true-false
#answers_to_question5
# content: Europe is NOT CONCERNED with water crisis, not even Southern Spain which is approaching scarcity.

answer10 = Answer.create!({
question: question4,
content: "True",
correct: true,
position: 1,
})
p answer10

answer11 = Answer.create!({
question: question4,
content: "False",
correct: false,
position: 2,
})
p answer11

#step 2 true-false
#answers_to_question6
# content: The more water you consume, especially indirectly, the more you pollute.


answer12 = Answer.create!({
question: question5,
content: "True",
correct: true,
position: 1,
})
p answer12

answer13 = Answer.create!({
question: question5,
content: "False",
correct: false,
position: 2,
})
p answer13




# #<UserAnswer:0x00007fa1372edbe8 id: nil, answer_id: nil, play_id: nil, created_at: nil, updated_at: nil>
# #Will be generated, no seed required!!!
