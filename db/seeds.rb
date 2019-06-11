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
content: 'What happened on the 28th of July 2010?',
kind: 'multiple-choice',
step: 1,
played: false,
})
p question1

question2 = Question.create!({
game: game1,
content: 'Who is Malin Falkenmark?',
kind: 'multiple-choice',
step: 2,
played: false,
})
p question2

question3 = Question.create!({
game: game1,
content: 'What is the water footprint?',
kind: 'multiple-choice',
step: 3,
played: false,
})
p question3

question4 = Question.create!({
game: game1,
content: 'How much water do you EAT per day (in liters)?',
kind: 'multiple-choice',
step: 4,
played: false,
})
p question4


# step 2 true-false

question5 = Question.create!({
game: game1,
content: 'Europe is NOT CONCERNED with water crisis. Not even Southern Spain, which is approaching water scarcity.',
kind: 'true-false',
step: 5,
played: false,
})
p question5

# question6 = Question.create!({
# game: game1,
# content: 'The more water you consume, especially indirectly, the more you pollute.',
# kind: 'true-false',
# step: 6,
# played: false,
# })
# p question6

question7 = Question.create!({
game: game1,
content: 'A T-shirt ==> 3,900 L of water
A pair of leather boots ==> 14,503 L

Think twice before you buy another one!',
kind: 'true-false',
step: 7,
played: false,
})
p question7

question8 = Question.create!({
game: game1,
content: 'Remember, your smartphone required 12,760 L of water!',
kind: 'true-false',
step: 8,
played: false,
})
p question8

question9 = Question.create!({
game: game1,
content: 'A cup of coffee is made of ... glasses of water. Switch to tea which consumes 10 times less :) ',
kind:'fill-in-the-blancs',
step: 9,
played: false,
})
p question9

question10 = Question.create!({
game: game1,
content: 'We eat ... times more water than what we drink. So let us not throw away food.',
kind:'fill-in-the-blancs',
step: 10,
played: false,
})
p question10

# question11 = Question.create!({
# game: game1,
# content: 'The point is not JUST about shortening your showers: ... bathtubs of water are required every day to make all the food we eat & all the things we buy!',
# kind:'fill-in-the-blancs',
# step: 11,
# played: false,
# })
# p question11

question12 = Question.create!({
game: game1,
content: 'A round-trip flight from Paris to London requires as much water as ... average dishwasher loads. That is because of oil so take the train!',
kind:'fill-in-the-blancs',
step: 12,
played: false,
})
p question12

# step 4 drag-and-drop

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
# step: 18,
# played: false,
# })

# p question


# <Answer:0x00007fa1374258a8 id: nil, question_id: nil, content: nil, correct: false, position: nil, created_at: nil, updated_at: nil>

#step 1 multiple-choice
#answers_to_question1
#content: 'What happened on the 28th of July 2010?'

answer1 = Answer.create!({
question: question1,
content: "Tintin landed on the Moon",
correct: false,
position: 1,
})
p answer1

answer2 = Answer.create!({
question: question1,
content: "The first episode of Game of Thrones was produced",
correct: false,
position: 2,
})
p answer2

answer3 = Answer.create!({
question: question1,
content: "Kardashian married Kanye West",
correct: false,
position: 3,
})
p answer3

answer4 = Answer.create!({
question: question1,
content: "The UN recognized the access to safe water as a basic Human Right",
correct: true,
position: 4,
})
p answer4

#step 1 multiple-choice
#answers_to_question2
#content: 'Who is Malin Falkenmark?'

answer5 = Answer.create!({
question: question2,
content: "Miss Finland 2018",
correct: false,
position: 1,
})
p answer5

answer6 = Answer.create!({
question: question2,
content: "Bradley Cooper's new secret girlfriend",
correct: false,
position: 2,
})
p answer6

answer7 = Answer.create!({
question: question2,
content: "The inventor of the water stress indicator measuring the amount of renewable freshwater available in a country per person.",
correct: true,
position: 3,
})
p answer7

answer8 = Answer.create!({
question: question2,
content: "The name of a new deadly Netflix series",
correct: false,
position: 4,
})
p answer8

#step 1 multiple-choice
#answers_to_question3
#content: 'What is the water footprint?'

answer9 = Answer.create!({
question: question3,
content: "Volume of freshwater used to produce the goods and services you consume per day",
correct: true,
position: 1,
})
p answer9

answer10 = Answer.create!({
question: question3,
content: "Your foot's mark when you walk on water, Jesus Christ!",
correct: false,
position: 2,
})
p answer10

answer11 = Answer.create!({
question: question3,
content: "The volume of water droped after a storm",
correct: false,
position: 3,
})
p answer11

answer12 = Answer.create!({
question: question3,
content: "Do you mean carbon footprint..? Do my actions have an impact on water?!",
correct: false,
position: 4,
})
p answer12

# step 1 multiple-choice
# answers_to_question4
# content: 'How much water do you EAT per day?'

answer13 = Answer.create!({
question: question4,
content: "3,496 L/day",
correct: true,
position: 1,
})
p answer13


answer14 = Answer.create!({
question: question4,
content: "2,000 L/day",
correct: false,
position: 2,
})
p answer14

answer15 = Answer.create!({
question: question4,
content: "500 L/day",
correct: false,
position: 3,
})
p answer15

answer16 = Answer.create!({
question: question4,
content: "10 L/day",
correct: false,
position: 4,
})
p answer16

#step 2 true-false
#answers_to_question5
# content: Europe is NOT CONCERNED with water crisis, not even Southern Spain which is approaching scarcity.

answer17 = Answer.create!({
question: question5,
content: "True",
correct: false,
position: 1,
})
p answer17

answer18 = Answer.create!({
question: question5,
content: "False",
correct: true,
position: 2,
})
p answer18

#step 2 true-false
#answers_to_question6
# content: The more water you consume, especially indirectly, the more you pollute.


# answer19 = Answer.create!({
# question: question6,
# content: "True",
# correct: true,
# position: 1,
# })
# p answer19

# answer20 = Answer.create!({
# question: question6,
# content: "False",
# correct: false,
# position: 2,
# })
# p answer20


#step 2 true-false
#answers_to_question7
#content: A T-shirt ==> 3,900 L of water A pair of leather boots ==> 14,503 L Think twice before you buy another one!',

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

#step 2 true-false
#answers_to_question8
#content: Remember, your smartphone required 12,760 L of water!

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


#step 3 fill-in-the-blancs
#answers_to_question9 to question12

answer25 = Answer.create!({
question: question9,
content: "140",
correct: true,
position: 1,
})
p answer25

answer26 = Answer.create!({
question: question10,
content: "500",
correct: true,
position: 2,
})
p answer26

# answer27 = Answer.create!({
# question: question11,
# content: "58",
# correct: true,
# position: 3,
# })
# p answer27

answer28 = Answer.create!({
question: question12,
content: "1,000",
correct: true,
position: 4,
})
p answer28


# step 4 drag-and-drop
# answers_to_question13 to question17

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
