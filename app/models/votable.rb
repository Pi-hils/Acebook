class Post < ActiveRecord::Base
  acts_as_votable
end

@post = Post.new(:name => 'My post!')
@post.save

@post.liked_by @account
@post.downvote_from @user2
@post.votes_for.size
@post.get_downvotes.size