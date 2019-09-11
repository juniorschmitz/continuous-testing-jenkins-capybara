Before do
  @login_page = LoginPage.new
  @home_page = HomePage.new
  @search_page = SearchPage.new

  page.current_window.resize_to(1920, 1080)
end
