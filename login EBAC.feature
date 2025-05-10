            #language: pt
            Funcionalidade: Login na plataforma EBAC-SHOP
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto: Dado que estou na página de Login

            Cenário: Login Válido
            Dado que o usuário está na página de login
            Quando ele realizar o login com dados válidos "joao@ebac.com" e senha "abc123"
            Então o sistema deve exibir a mensagem "redirecionado para tela de checkout!"

            Cenário: Usuário inválido
            Dado que o usuário está na página de login
            Quando ele realizar o login com dados inválidos
            Então o sistema deve exibir a mensagen "usuário ou senha inválidos"

            Esquema do Cenário:Tentativas de login
            Quando ele inserir o usuário <usuario> e a senha <senha>
            Então o sistema deve exibir a mensagem <mensagem>

            Exemplos:
            | usuário         | senha    | mensagem                               |
            | "joao@ebac.com" | "abc123" | "redirecionado para tela de checkout!" |
            | "joao@ebac.com" | "123"    | "usuário ou senha inválidos!"          |
            | "jose@ebac.com" | "abc123" | "usuário ou senha inválidos!"          |
            | "jose@ebac.com" | "123"    | "usuário ou senha inválidos"           |