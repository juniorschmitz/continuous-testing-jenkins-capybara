Quando("eu faço login com {string} e {string}") do |email, password|
  @login_page.load
  @login_page.login(email, password)
end

Então("devo ver {string} na área logada") do |expect_name|
  expect(@home_page.logged_user).to have_content expect_name
end

Então("devo ver a mensagem de alerta {string}") do |expect_message|
  expect(@login_page.alert).to have_content expect_message
end
