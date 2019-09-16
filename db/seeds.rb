# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.new(name: 'Pedro', email: 'pedro-test@test.com', password: '121343')
user.save!

# Tambien se puede crear llamando al method .create
User.create(name: 'Juan', email: 'juan-test@test.com', password: 'efefef12')

category = Category.create(code: 'rails', description: 'Posts sobre Rails')

post = Post.new(title: 'Nuevo Post', content: 'Some content', date: DateTime.now, user: user, category: category)
post.save!

comment = Comment.create(text: 'Lorem ipsum', date: DateTime.now, post: post, user: user)
