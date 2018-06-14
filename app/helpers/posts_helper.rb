module PostsHelper
  def create_comment(post, current_user)
    comment = Comment.new(post_id: post.id)
    if current_user
      comment.name = current_user.name
      comment.email = current_user.email
    end
    comment
  end
end
