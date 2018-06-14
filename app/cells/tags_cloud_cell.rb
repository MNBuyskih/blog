class TagsCloudCell < Cell::Rails
  def show
    @tags = Tag.all
    render
  end
end
