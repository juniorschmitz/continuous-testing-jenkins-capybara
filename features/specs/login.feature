#language: pt

Funcionalidade: Login
    Para que eu possa realizar compras no site
    Sendo um usuário previamente cadastrado
    Posso acessar o e-commerce com o meu email e senha

    @login_happy
    Cenario: Acesso
        Quando eu faço login com "potato@meuteste.com" e "potato"
        Então devo ver "Potato" na área logada

    @login_happiless
    Esquema do Cenario: Login sem sucesso
        Quando eu faço login com <email> e <senha>
        Então devo ver a mensagem de alerta <texto>

        Exemplos:
            | email             | senha     | texto                          |
            | "potatoinvalido@teste.com"  | "potato"  | "Authentication failed." |
            | "potatoinvalido2@meuteste.com"   | "potato"  | "Authentication failed." |
            | ""                | "lalapotatos" | "An email address required"          |
            | "potato@gmail.com" | ""        | "Password is required."          |
