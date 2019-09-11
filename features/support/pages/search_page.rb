class SearchPage < BasePage
  def load
    visit "/search"
  end

  def search(keyword)
    find('input.search_query').set(keyword)
    find('.button-search').click
  end

  def access_login
    find('a.login').click
  end

  def alert
    find('.alert.alert-warning').text
  end

  def products
    find_all('div.product-container')
  end
end
  