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
})

p game1


# <Play:0x00007fa1387c2fa0 id: nil, game_id: nil, user_id: nil, score: 0, eliminated: false, created_at: nil, updated_at: nil>
# Will be generated, no seed required!!!

play1 = Play.create!({
game: game1,
user: user1,
score: 10,
eliminated: false,
})
p play1


#<Question:0x00007fa137567478 id: nil, game_id: nil, content: nil, kind: nil, step: nil, created_at: nil, updated_at: nil>

#Step 1

question1 = Question.create!({

game: game1,
content: 'What consumes most of your water at home?',
kind: 'images-multiple-choice',
step: 1,
})

p question1


question2 = Question.create!({

game: game1,
content: 'What is the question 2?',
kind:'fill-in-the-blancs',
step: 2,
})

p question2


question3 = Question.create!({

game: game1,
content: 'What is the question 3?',
kind: 'drag-and-drop',
step: 3,
})

p question3


question4 = Question.create!({

game: game1,
content: 'What is the question 4?',
kind: 'true-false',
step: 4,
})

p question4

#Step 2

question5 = Question.create!({

game: game1,
content: 'What is the question 5 (collect water drops) - Step 2?',
kind: 'water-drop-collection',
step: 5,
})

p question5


# <Answer:0x00007fa1374258a8 id: nil, question_id: nil, content: nil, correct: false, position: nil, created_at: nil, updated_at: nil>

#answers_to_question1

answer1 = Answer.create!({
question: question1,
content: "My toilet",
correct: true,
position: 1,
})

p answer1


answer2 = Answer.create!({
question: question1,
content: "My bath tub",
correct: false,
position: 2,
})

p answer2


answer3 = Answer.create!({
question: question1,
content: "My washing machine",
correct: false,
position: 3,
})

p answer3

answer4 = Answer.create!({
question: question1,
content: "My dish-washer",
correct: false,
position: 4,
})

p answer4


#answers_to_question2

answer1 = Answer.create!({
question: question2,
content: "Answer 1",
correct: true,
position: 1,
})

p answer1


answer2 = Answer.create!({
question: question1,
content: "Answer 2",
correct: false,
position: 2,
})

p answer2


answer3 = Answer.create!({
question: question1,
content: "Answer 3",
correct: false,
position: 3,
})

p answer3


answer4 = Answer.create!({
question: question1,
content: "Answer 4",
correct: false,
position: 4,
})

p answer4


#answers_to_question3

answer1 = Answer.create!({
question: question3,
content: "Answer 1",
correct: true,
position: 1,
})

p answer1


answer2 = Answer.create!({
question: question3,
content: "Answer 2",
correct: false,
position: 2,
})

p answer2


answer3 = Answer.create!({
question: question3,
content: "Answer 3",
correct: false,
position: 3,
})

p answer3


answer4 = Answer.create!({
question: question3,
content: "Answer 4",
correct: false,
position: 4,
})

p answer4


#answers_to_question4

answer1 = Answer.create!({
question: question4,
content: "Answer 1",
correct: true,
position: 1,
})

p answer1


answer2 = Answer.create!({
question: question4,
content: "Answer 2",
correct: false,
position: 2,
})

p answer2


answer3 = Answer.create!({
question: question4,
content: "Answer 3",
correct: false,
position: 3,
})

p answer3


answer4 = Answer.create!({
question: question4,
content: "Answer 4",
correct: false,
position: 4,
})

p answer4


#answers_to_question5

answer1 = Answer.create!({
question: question4,
content: "Collected drop",
correct: true,
position: 1,
})

p answer1


answer2 = Answer.create!({
question: question4,
content: "Missed drop",
correct: false,
position: 2,
})

p answer2



#<UserAnswer:0x00007fa1372edbe8 id: nil, answer_id: nil, play_id: nil, created_at: nil, updated_at: nil>
#Will be generated, no seed required!!!

# user_answer1 = UserAnswer.create!({
# answer: answer1,
# play: play1,
# })







