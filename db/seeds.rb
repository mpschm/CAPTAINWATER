# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying all users, games, plays, questions, answers, useranswers"
UserAnswer.destroy_all
Answer.destroy_all
Question.destroy_all
Play.destroy_all
Game.destroy_all
User.destroy_all


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

#<User id: nil, email: "", created_at: nil, updated_at: nil, pseudo: nil, age: nil, coliving: nil, country: nil, avatar: nil, waterprint: nil>

#<Game:0x00007fa13851a488 id: nil, user_id: nil, name: nil, code: nil, current_step: nil, created_at: nil, updated_at: nil>

#<Play:0x00007fa1387c2fa0 id: nil, game_id: nil, user_id: nil, score: 0, eliminated: false, created_at: nil, updated_at: nil>

#<Question:0x00007fa137567478 id: nil, game_id: nil, content: nil, kind: nil, step: nil, created_at: nil, updated_at: nil>

#<Answer:0x00007fa1374258a8 id: nil, question_id: nil, content: nil, correct: false, position: nil, created_at: nil, updated_at: nil>

#<UserAnswer:0x00007fa1372edbe8 id: nil, answer_id: nil, play_id: nil, created_at: nil, updated_at: nil>
