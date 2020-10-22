# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

post = Post.create(title: 'First Post', subreddit: 'Newbie', user: 'Yvonne', content: 'Hello all, this is my first post.', upvotes: 0);

comment = Comment.create(content: 'Welcome!', user: 'Simon', upvotes: 0, post_id: 1)

