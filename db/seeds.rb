# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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

peri = User.create(
    :username => 'peri',
    :password_digest => 'password',
    :karma => 0
)

post = Post.create(
    title: 'First Post', 
    user_id: yvonne.id, 
    content: 'Hello all, this is my first post.'
);

lorem = Post.create(
    title: 'What is Lorem Ipsum?',
    content: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    user_id: simon.id
)

where = Post.create(
    :title => 'Where does it come from?',
    :content => 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.',
    :user_id => peri.id
)

vote = Vote.create(
    upvote: true,
    downvote: false,
    user_id: yvonne.id,
    post_id: lorem.id,
    comment_id: nil
)

vote2 = Vote.create(
    upvote: true,
    downvote: false,
    user_id: simon.id,
    post_id: lorem.id,
    comment_id: nil
)

vote3 = Vote.create(
    upvote: true,
    downvote: false,
    user_id: peri.id,
    post_id: lorem.id,
    comment_id: nil
)

vote4 = Vote.create(
    upvote: false,
    downvote: true,
    user_id: peri.id,
    post_id: post.id,
    comment_id: nil
)

comment = Comment.create(
    content: 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.',
    post_id: lorem.id,
    user_id: yvonne.id
)

comment2 = Comment.create(
    content: '"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?"',
    post_id: lorem.id,
    user_id: simon.id
)

comment_vote = Vote.create(
    upvote: true,
    downvote: false,
    user_id: yvonne.id,
    post_id: comment2.post_id,
    comment_id: comment2.id
)