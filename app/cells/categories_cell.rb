class CategoriesCell < Cell::Rails
  def show
    @categories = Category.all
    render
  end
end
