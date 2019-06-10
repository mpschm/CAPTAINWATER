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
email: 'toto@mail.com',
password: '123456',
pseudo: 'toto',
age: '32',
coliving: 'true',
country: 'France',
avatar: 'photo.png',
waterprint: '1000',
})
p user1

user2 = User.create!({
email: 'nana@mail.com',
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
email: 'lili@mail.com',
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
content: 'What means water footprint ?',
kind: 'multiple-choice',
step: 1,
played: false,
})
p question1

question2 = Question.create!({
game: game1,
content: 'How much water do you eat per day ?',
kind: 'multiple-choice',
step: 2,
played: false,
})
p question2

question3 = Question.create!({
game: game1,
content: 'What happened on the 28th of July 2010?',
kind: 'multiple-choice',
step: 3,
played: false,
})
p question3

question4 = Question.create!({
game: game1,
content: 'Who is Malin FALKENMARK ?',
kind: 'multiple-choice',
step: 4,
played: false,
})
p question4

# step 2 true-false

question5 = Question.create!({
game: game1,
content: 'UNexpected consequences of the drought in Russia ?',
kind: 'true-false',
step: 5,
played: false,
})
p question5

question6 = Question.create!({
game: game1,
content: 'If you reduce your daily water consumption by 5% or 200L,
you could automatically reduce pollution on average by %. ',
kind: 'true-false',
step: 6,
played: false,
})
p question6

question7 = Question.create!({
game: game1,
content: 'Agriculture consumes 70% of all freshwater globally.',
step: 7,
played: false,
})
p question7

question8 = Question.create!({
game: game1,
content: 'Water Stress has generated 279 conflicts & wars in the world since 2010.',
step: 8,
played: false,
})
p question8

# step 3 fill-in-the-blancs

question9 = Question.create!({
game: game1,
content: 'We eat … times more water than we drink.',
kind:'fill-in-the-blancs',
step: 9,
played: false,
})
p question9

question10 = Question.create!({
game: game1,
content: '… bathtubs of water are used per person,
per day to make the food we eat and the things we buy.',
kind:'fill-in-the-blancs',
step: 10,
played: false,
})
p question10

# question11 = Question.create!({
# game: game1,
# content: 'Flying from Paris to London requires
# as much water as ... average dishwasher loads.',
# kind:'fill-in-the-blancs',
# step: 11,
# played: false,
# })
# p question11

# question12 = Question.create!({
# game: game1,
# content: 'Coffee requires ... times more water than tea.',
# kind:'fill-in-the-blancs',
# step: 12,
# played: false,
# })
# p question12

# # step 4 drag-and-drop

# question13 = Question.create!({
# game: game1,
# content: 'A bowl of cereals',
# kind: 'drag-and-drop',
# step: 13,
# played: false,
# })
# p question13

# question14 = Question.create!({
# game: game1,
# content: 'An egg',
# kind: 'drag-and-drop',
# step: 14,
# played: false,
# })
# p question14

# question15 = Question.create!({
# game: game1,
# content: 'A t-shirt',
# kind: 'drag-and-drop',
# step: 15,
# played: false,
# })
# p question15

# question16 = Question.create!({
# game: game1,
# content: 'A pair of leather boots',
# kind: 'drag-and-drop',
# step: 16,
# played: false,
# })
# p question16

# question17 = Question.create!({
# game: game1,
# content: 'A smartphone',
# kind: 'drag-and-drop',
# step: 17,
# played: false,
# })
# p question17


#step 5 water-drop-collection

# question = Question.create!({

# game: game1,
# content: 'What is the question 5 (collect water drops) - Step 2?',
# kind: 'water-drop-collection',
# step: 5,
# played: false,
# })

# p question


# <Answer:0x00007fa1374258a8 id: nil, question_id: nil, content: nil, correct: false, position: nil, created_at: nil, updated_at: nil>

#step 1 multiple-choice
#answers_to_question1
#'How many people currently live without sufficient access to freshwater for at least one month of the year?',

answer1 = Answer.create!({
question: question1,
content: "1 billion, ⅙  of the world’s population",
correct: false,
position: 1,
})
p answer1

answer2 = Answer.create!({
question: question1,
content: "2 billion, ⅓ of the world’s population",
correct: true,
position: 2,
})
p answer2

answer3 = Answer.create!({
question: question1,
content: "4 billion, ⅔ of the world’s population",
correct: false,
position: 3,
})
p answer3

answer4 = Answer.create!({
question: question1,
content: "All of us",
correct: false,
position: 4,
})
p answer4


# #step 1 multiple-choice
# #answers_to_question2
# #'What does the Syrian war and the Arab Spring have in common?',

answer5 = Answer.create!({
question: question2,
content: "They were both originally caused by drought",
correct: true,
position: 1,
})
p answer5

answer6 = Answer.create!({
question: question2,
content: "They were planned by a scapegoat nation - the Russians?",
correct: false,
position: 2,
})
p answer6

answer7 = Answer.create!({
question: question2,
content: "They resulted in improved democracy",
correct: false,
position: 3,
})
p answer7

answer8 = Answer.create!({
question: question2,
content: "They didn’t increase migration flows to Europe",
correct: false,
position: 4,
})
p answer8


# #step 1 multiple-choice
# #answers_to_question3
# #'What happened on the 28th of July 2010?',

answer9 = Answer.create!({
question: question3,
content: "Tintin landed on the Moon",
correct: false,
position: 1,
})
p answer9

answer10 = Answer.create!({
question: question3,
content: "The first episode of Game of Thrones was produced",
correct: false,
position: 2,
})
p answer10

answer11 = Answer.create!({
question: question3,
content: "Kardashian married Kanye West",
correct: false,
position: 3,
})
p answer11

answer12 = Answer.create!({
question: question3,
content: "The UN recognized the access to safe water as a basic Human Right",
correct: true,
position: 4,
})
p answer12


# #step 1 multiple-choice
# #answers_to_question4
# #'Water stress = inadequacy between water use and water resources.
# # It starts when the water in a country < 4 600 litres/day per person.
# # What is the closest region to France that is in very high water stress?'

answer13 = Answer.create!({
question: question4,
content: "South of Spain",
correct: true,
position: 1,
})
p answer13

answer14 = Answer.create!({
question: question4,
content: "Egypt",
correct: false,
position: 2,
})
p answer14

answer15 = Answer.create!({
question: question4,
content: "Turkish coast",
correct: false,
position: 3,
})
p answer15

answer16 = Answer.create!({
question: question4,
content: "Morocco",
correct: false,
position: 4,
})
p answer16


# #step 2 true-false
# #answers_to_question1
# #'5,000 children die due to preventable water and sanitation-related diseases.'

answer17 = Answer.create!({
question: question5,
content: "True",
correct: true,
position: 1,
})
p answer17

answer18 = Answer.create!({
question: question5,
content: "False",
correct: false,
position: 2,
})
p answer18


# #step 2 true-false
# #answers_to_question2
# #'If you reduce your daily water consumption by 5% or 200L,
# #you could automatically reduce pollution on average by x%.'

answer19 = Answer.create!({
question: question6,
content: "True",
correct: true,
position: 1,
})
p answer19

answer20 = Answer.create!({
question: question6,
content: "False",
correct: false,
position: 2,
})
p answer20


# #step 2 true-false
# #answers_to_question3
# #'Agriculture consumes 70% of all freshwater globally.'

answer21 = Answer.create!({
question: question7,
content: "True",
correct: true,
position: 1,
})
p answer21

answer22 = Answer.create!({
question: question7,
content: "False",
correct: false,
position: 2,
})
p answer22

# #step 2 true-false
# #answers_to_question4
# #'279 conflicts and wars have occurred in the world since 2010'

answer23 = Answer.create!({
question: question8,
content: "True",
correct: true,
position: 1,
})
p answer23

answer24 = Answer.create!({
question: question8,
content: "False",
correct: false,
position: 2,
})
p answer24


# #step 3 fill-in-the-blancs
# #answers_to_question1 to question4
# #'279 conflicts and wars have occurred in the world since 2010'

answer25 = Answer.create!({
question: question9,
content: "500",
correct: true,
position: 1,
})
p answer25

answer26 = Answer.create!({
question: question10,
content: "58",
correct: true,
position: 2,
})
# p answer26

# answer27 = Answer.create!({
# question: question11,
# content: "1 000",
# correct: true,
# position: 1,
# })
# p answer27

# answer28 = Answer.create!({
# question: question12,
# content: "10",
# correct: true,
# position: 2,
# })
# p answer28

# # #step 4 drag-and-drop
# # #answers_to_question1 to question5

# answer29 = Answer.create!({
# question: question13,
# content: "1 644 l",
# correct: true,
# position: 1,
# })
# p answer29

# answer30 = Answer.create!({
# question: question14,
# content: "3 625 l",
# correct: true,
# position: 2,
# })
# p answer30

# answer31 = Answer.create!({
# question: question15,
# content: "3 900 l",
# correct: true,
# position: 3,
# })
# p answer31

# answer32 = Answer.create!({
# question: question16,
# content: "14 503 l",
# correct: true,
# position: 4,
# })
# p answer32

# answer33 = Answer.create!({
# question: question17,
# content: "12 760 l",
# correct: true,
# position: 5,
# })
# p answer33


# #<UserAnswer:0x00007fa1372edbe8 id: nil, answer_id: nil, play_id: nil, created_at: nil, updated_at: nil>
# #Will be generated, no seed required!!!








