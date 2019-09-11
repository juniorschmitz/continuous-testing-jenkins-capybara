#language:pt

@busca
Funcionalidade: Busca
    Para que eu possa buscar por roupas para comprar
    Sendo um usuário do site
    Posso pesquisar tipos de roupa pelo nome
    
    @busca_nome_produto
    Cenario: Busca por titulo
        Dado que eu esteja na página inicial do site
        Quando eu faço uma busca pelo termo "dress"
        Então devo visualizar produtos apresentados na página

    @busca_404
    Cenario: Busca 404
        Dado que eu esteja na página inicial do site
        Quando eu faço uma busca pelo termo "blablableh"
        Então devo ver a mensagem "No results were found"
