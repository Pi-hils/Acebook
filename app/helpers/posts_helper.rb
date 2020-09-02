module PostsHelper
  def liked_or_not
    current_account.liked?(@post) ? 'liked' : ''
  end
end
