# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

first_users = User.create([{ email: 'sercanuygur@gmail.com', password: '1234567' },
                           { email: 'eyupsercanuygur@gmail.com', password: '8910111213' }])

first_posts = Post.create([{ user_id: 1, header: 'Technology', body: 'Nowadays, increasing increasing energy demand is causing more pollution and  the', color: 'red',
                             title: 'Energy Demand Foresight', design: 'One column', date: DateTime.new(2021, 1, 4, 11) },
                           { user_id: 2, header: 'Art', body: 'Postmodern art is an area that is criticised by the art community and also from an outher society',
                            color: 'blue',
                             title: 'Modern Art Criticism', design: 'Two column', date: DateTime.new(2021, 1, 2, 15) }])

first_comments = Comment.create({ user_id: 2, post_id: 1, date: DateTime.new(2021, 9, 2, 17),
                                   body: 'It is a great article, please keep writing those kind of articles.' })
