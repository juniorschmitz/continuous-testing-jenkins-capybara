Dado("que eu esteja na página inicial do site") do
  @home_page.load
end

Quando("eu faço uma busca pelo termo {string}") do |keyword|
  @home_page.search(keyword)
end

Então("devo visualizar produtos apresentados na página") do
  expect(@search_page.products).not_to be_nil
end

Então("devo ver a mensagem {string}") do |expect_alert|
  expect(@search_page.alert).to have_content expect_alert
end
