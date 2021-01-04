require 'Date'

User.destroy_all()
Book.destroy_all()
BookCopy.destroy_all()

10.times do 
    User.create(name: Faker::FunnyName.two_word_name, username:Faker::Internet.username, img: Faker::Avatar.image, email: Faker::Internet.email, bio:"I read Books!" )
end

30.times do 
    Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.author, year:Faker::Number.within(range: 1900..2020), rating: Faker::Number.within(range: 0..5))
end

conditionArray = ['Excellent', 'Fair', 'Like New', '$hit', 'Rough', 'Worn']

15.times do 
    BookCopy.create(user_id: User.all.sample.id, book_id: Book.all.sample.id, condition: conditionArray.sample, active: false, start_date: Date.today , due_date: (Date.today + 14))
end