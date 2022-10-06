# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Result.destroy_all
User.destroy_all
Guess.destroy_all
Word.destroy_all

puts "seeding results"

r1 = Result.create(win: true, loss: false, game: 1, user_id: 2)
r2 = Result.create(win: true, loss: false, game: 1, user_id: 1)
r3 = Result.create(win: true, loss: false, game: 1, user_id: 3)
r4 = Result.create(win: true, loss: false, game: 1, user_id: 4)

puts "seeding users"

u1 = User.create(username: "Jason", password_digest: "passwerd")
u2 = User.create(username: "Ruby", password_digest: "onRails12")
u3 = User.create(username: "Java", password_digest: "warrior")
u4 = User.create(username: "Sinatra", password_digest: "ytrfhjknbvcgyu8584")

puts "seeding words"

w1 = Word.create(entry: "about")
w2 = Word.create(entry: "water")
w3 = Word.create(entry: "frost")
w4 = Word.create(entry: "sharp")
w5 = Word.create(entry: "house")
w6 = Word.create(entry: "shine")
w7 = Word.create(entry: "pizza")
w8 = Word.create(entry: "earth")
w9 = Word.create(entry: "elite")
w10 = Word.create(entry: "lunch")
w11 = Word.create(entry: "every")
w12 = Word.create(entry: "stone")
w13 = Word.create(entry: "maybe")
w14 = Word.create(entry: "extra")
w15 = Word.create(entry: "every")


puts "seeding guesses"

g1 = Guess.create(guess_1: nil, guess_2: nil, guess_3: nil, guess_4: nil, guess_5: nil, user_id: u1.id, word_id: w1.id)
g2 = Guess.create(guess_1: nil, guess_2: nil, guess_3: nil, guess_4: nil, guess_5: nil, user_id: u2.id, word_id: w10.id)
g3 = Guess.create(guess_1: nil, guess_2: nil, guess_3: nil, guess_4: nil, guess_5: nil, user_id: u1.id, word_id: w11.id)
g4 = Guess.create(guess_1: nil, guess_2: nil, guess_3: nil, guess_4: nil, guess_5: nil, user_id: u4.id, word_id: w5.id)
g5 = Guess.create(guess_1: nil, guess_2: nil, guess_3: nil, guess_4: nil, guess_5: nil, user_id: u3.id, word_id: w14.id)


puts "done seeding"