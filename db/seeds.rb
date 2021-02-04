# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# post2 = Post.create(title: 'Lorem Ipsum', subreddit: 'Not New', user: 'Simon', content: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', upvotes: 1, toggle_upvote: false, toggle_downvote: false);

# post3 = Post.create(title: '1914 translation by H. Rackham', subreddit: 'Not New', user: 'Jimmy', content: '"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?"', upvotes: 1, toggle_upvote: false, toggle_downvote: false);

# comment = Comment.create(content: 'Welcome!', user: 'Simon', upvotes: 0, post_id: 1, toggle_upvote: false, toggle_downvote: false);
# comment2 = Comment.create(content: 'Hi.', user: 'Peri', upvotes: 2, post_id: 1, toggle_upvote: false, toggle_downvote: false)
# comment3 = Comment.create(content: 'Hi.', user: 'Peri', upvotes: 2, post_id: 2, toggle_upvote: false, toggle_downvote: false)
# comment3 = Comment.create(content: 'Cool.', user: 'Simon', upvotes: 2, post_id: 3, toggle_upvote: false, toggle_downvote: false)

yvonne = User.create(
    :username => 'yvonne',
    :password_digest => 'password',
    :karma => 0
)

simon = User.create(
    :username => 'simon',
    :password_digest => 'password',
    :karma => 0
)

post = Post.create(
    title: 'First Post', 
    subreddit: 'New', 
    user_id: yvonne.id, 
    content: 'Hello all, this is my first post.'
);

vote = Vote.create(
    downvote: false,
    upvote: true,
    user_id: yvonne.id,
    post_id: post.id
)

vote2 = Vote.create(
    downvote: false,
    upvote: true,
    user_id: simon.id,
    post_id: post.id
)