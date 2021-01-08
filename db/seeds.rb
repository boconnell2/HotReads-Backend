require 'Date'

User.destroy_all()
Book.destroy_all()
BookCopy.destroy_all()


people_images = [
    '',
    'https://images.squarespace-cdn.com/content/v1/5a4f9f16ccc5c5504456e2a7/1562716587623-BXA3F4OI8N17TSTT6E7P/ke17ZwdGBToddI8pDm48kMXRibDYMhUiookWqwUxEZ97gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0luUmcNM2NMBIHLdYyXL-Jww_XBra4mrrAHD6FMA3bNKOBm5vyMDUBjVQdcIrt03OQ/07022019_AnthonyRubbo_175.jpg?format=2500w',
    'https://miro.medium.com/max/3150/2*sSQ-hi9OX2OoBeZYttDfvQ.jpeg',
    'https://miro.medium.com/fit/c/1360/1360/1*qW201jhbvG9soe2RiEaMnw.jpeg',
    'https://miro.medium.com/max/3150/1*aoZai5bRkjOVB0XST5DrTA.jpeg',
    'https://www3.pictures.zimbio.com/gi/Ian+Hollander+fZDNkw1wZxCm.jpg'
]

6.times do 
    User.create(name: Faker::FunnyName.two_word_name, username:Faker::Internet.username, img: people_images.pop, email: Faker::Internet.email, bio:"I read Books!" )
end
# Book.create(title: , author: , genre: , year: , rating: , img: , description: ' ')

Book.create(title: "Everything That Rises Must Converge", author: "Flannery O'Connor", genre: 'Short Stories', year: 1965, rating: 3.5, img: 'https://images-na.ssl-images-amazon.com/images/I/51aa4AjMakL._SX329_BO1,204,203,200_.jpg', description: '')
Book.create(title: "A Promised Land", author: "Barrack Obama", genre: 'Memoir', year: 2020, rating: 4.5, img: 'https://m.media-amazon.com/images/I/91uwocAMtSL.jpg', description: '')
Book.create(title: "Harry Potter and the Sorcerer's Stone", author: "J.K. Rowling", genre: 'Fantasy', year: 1997, rating: 4.8, img: 'https://s3.amazonaws.com/image-products/35489/35489-1024.jpg', description: '')
Book.create(title: "All We Can Save", author: "Ayana Elizabeth Johnson", genre: 'Non-Fiction', year: 2020, rating: 4.7, img: 'https://images.penguinrandomhouse.com/cover/9780593237069', description: '')
Book.create(title: "Crime and Punishment", author: "Fyodor Dostoevsky", genre: 'Novel', year: 1866, rating: 4.1, img: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1494307172l/35101197._SY475_.jpg', description: '')
Book.create(title: "The Vanishing Half" , author: "Brit Bennett" , genre: "Historical Fiction", year: 2020 , rating: 4.4, img: "https://images4.penguinrandomhouse.com/cover/9780593286104", description: ' ')
Book.create(title: "Writers & Lovers", author: "Lily King" , genre: "Literary fiction" , year: 2020, rating: 4.1, img: "https://images-na.ssl-images-amazon.com/images/I/81r-DyNOJtL.jpg" , description: ' ')
Book.create(title: "Mexican Gothic" , author: "Silvia Moreno-Garcia", genre: "Horror fiction" , year: 2020 , rating: 4.6 , img: "https://images.penguinrandomhouse.com/cover/9780525620785" , description: ' ')
Book.create(title: "My Dark Vanessa: A Novel" , author: "Kate Elizabeth Russell", genre: "Psychological Fiction", year: 2020 , rating: 4, img: "https://images-na.ssl-images-amazon.com/images/I/81CBonEmekL.jpg", description: ' ')
Book.create(title: "Priestdaddy", author: "Patricia Lockwood", genre: "Humour", year: 2017, rating: 3.7, img: "https://images-na.ssl-images-amazon.com/images/I/81t-vXpiTEL.jpg", description: ' ')
Book.create(title: "We Were Eight Years in Power", author: "Ta-Nehisi Coates" , genre: "Biography" , year: 2017 , rating: 4.7 , img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9VMpmuskCFOTJNwm02Fvvihy1O0UZBK1Fow&usqp=CAU", description: ' ')






conditionArray = ['Excellent', 'Fair', 'Like New', '$hit', 'Rough', 'Worn']


# user 1
BookCopy.create(user_id: User.all.first.id, book_id: Book.all.first.id, condition: conditionArray.sample, active: false, start_date: Date.today , due_date: (Date.today + 14))
BookCopy.create(user_id: User.all.first.id, book_id: Book.all[10].id, condition: conditionArray.sample, active: false, start_date: Date.today , due_date: (Date.today + 14))
BookCopy.create(user_id: User.all.first.id, book_id: Book.all[8].id, condition: conditionArray.sample, active: false, start_date: Date.today , due_date: (Date.today + 14))

# user 2
BookCopy.create(user_id: User.all[1].id, book_id: Book.all[5].id, condition: conditionArray.sample, active: false, start_date: Date.today , due_date: (Date.today + 14))
BookCopy.create(user_id: User.all[1].id, book_id: Book.all[9].id, condition: conditionArray.sample, active: false, start_date: Date.today , due_date: (Date.today + 14))
BookCopy.create(user_id: User.all[1].id, book_id: Book.all[6].id, condition: conditionArray.sample, active: false, start_date: Date.today , due_date: (Date.today + 14))
BookCopy.create(user_id: User.all[1].id, book_id: Book.all[7].id, condition: conditionArray.sample, active: false, start_date: Date.today , due_date: (Date.today + 14))

# user 3
BookCopy.create(user_id: User.all[2].id, book_id: Book.all[10].id, condition: conditionArray.sample, active: false, start_date: Date.today , due_date: (Date.today + 14))
BookCopy.create(user_id: User.all[2].id, book_id: Book.all[8].id, condition: conditionArray.sample, active: false, start_date: Date.today , due_date: (Date.today + 14))

# user 4
BookCopy.create(user_id: User.all[3].id, book_id: Book.all[8].id, condition: conditionArray.sample, active: false, start_date: Date.today , due_date: (Date.today + 14))
BookCopy.create(user_id: User.all[3].id, book_id: Book.all[10].id, condition: conditionArray.sample, active: false, start_date: Date.today , due_date: (Date.today + 14))

# user 5
BookCopy.create(user_id: User.all[4].id, book_id: Book.all[6].id, condition: conditionArray.sample, active: false, start_date: Date.today , due_date: (Date.today + 14))
BookCopy.create(user_id: User.all[4].id, book_id: Book.all[7].id, condition: conditionArray.sample, active: false, start_date: Date.today , due_date: (Date.today + 14))
BookCopy.create(user_id: User.all[4].id, book_id: Book.all[3].id, condition: conditionArray.sample, active: false, start_date: Date.today , due_date: (Date.today + 14))
BookCopy.create(user_id: User.all[4].id, book_id: Book.all[9].id, condition: conditionArray.sample, active: false, start_date: Date.today , due_date: (Date.today + 14))

