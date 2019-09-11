class HomePage < BasePage
  def load
    visit "/"
  end

  def search(keyword)
    find('input.search_query').set(keyword)
    find('.button-search').click
  end

  def access_login
    find('a.login').click
  end

  def logged_user
    find('div.header_user_info a.account span').text
  end
end
  