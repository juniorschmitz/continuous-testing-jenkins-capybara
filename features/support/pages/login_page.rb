class LoginPage < BasePage
  def load
    visit "/index.php?controller=authentication&back=my-account"
  end

  def login(email, pass)
    find("input#email").set email
    find("input#passwd").set pass
    click_button "Sign in"
  end

  def alert
    find('.alert.alert-danger').text
  end
end
