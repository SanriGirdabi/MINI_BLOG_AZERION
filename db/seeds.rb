# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

first_users = User.create([{ email: 'sercanuygur@gmail.com', password: '1234567' },
                           { email: 'eyupsercanuygur@gmail.com', password: '8910111213' }])

first_posts = Post.create([{ user_id: 1, header: 'Teknoloji', body: 'Günümüzde ilerleyen enerji ihtyacı...', color: 'red',
                             title: 'Enerji İhtiyacı Öngörüleri', design: 'Bir kolon', date: DateTime.new(2021, 1, 4, 11) },
                           { user_id: 2, header: 'Sanat', body: 'Postmodern sanatın eleştrisi konusu gündemden düşmeyen...',
                            color: 'blue',
                             title: 'Modern Sanat ve Eleştrisi', design: 'İki kolon', date: DateTime.new(2021, 1, 2, 15) }])

first_comments = Comment.create({ user_id: 2, post_id: 1, date: DateTime.new(2021, 9, 2, 17),
                                   body: 'Harika bir makale devamını bekliyoruz' })
