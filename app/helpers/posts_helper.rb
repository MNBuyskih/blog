module PostsHelper
  def page_count(posts)
    (posts.length / Rails.configuration.page_length).ceil
  end

  def prev_page
    current_page - 1
  end

  def next_page
    current_page + 1
  end

  def current_page
    params.key?(:page) ? params[:page].to_i : 1
  end
end
