class FooterLatestPostsCell < Cell::Rails

  def show
    @posts = Post.order(:created_at).limit(3)
    render
  end

end
