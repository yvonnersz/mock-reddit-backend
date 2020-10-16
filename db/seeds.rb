# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

yvonne = User.create(username: 'yvonne', password: 'password', karma: 0);
simon = User.create(username: 'simon', password: 'password', karma: 0);

post = Post.create(title: 'First Post', subreddit: 'Newbie', content: 'Hello all, this is my first post.', upvotes: 0, user_id: 1);

comment = Comment.create(content: 'Welcome!', upvotes: 0, user_id: 2, post_id: 1)

