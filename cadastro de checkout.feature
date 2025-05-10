            #language:pt
            Funcionalidade:Tela de cadastro - checkout da EBAC-SHOP
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto: Dado que estou na página de cadastro

            Cenário:Cadastro com todos os dados obrigatórios,marcados com asteriscos
            Dado que o usuário está na tela de cadastro
            Quando ele preencher os campos nome,sobrenome,endereço,cidade,cep,telefone e e-mail
            Então clicar em "Concluir cadastro",o sistema deve exibir a mensagem "cadastro realizado com sucesso!"

            Cenário: Cadastro com campo e-mail com formato inválido
            Dado que o usuário está na tela de cadastro
            Quando ele preencher nome "José",sobrenome "Pereira",endereço "Rua A 45",cidade "Campinas",cep "13000-000",telefone "(19)91234-5678" e e-mail "josepereira.com"
            Então clicar em "Concluir cadastro", o sistema deve exibir a mensagem "formato de e-mail inválido"

            Cenário: Cadastro com campos obrigatórios vazios
            Dado que o usuário está na tela de cadastro
            Quando ele deixar o campo obrigatório vazios
            Então clicar em "Concluir cadastro", o sistema deve exibir a mensagem "preencha todos os campos obrigatórios"

            Esquema do Cenário: Cadastro com diferentes combinações de dados
            Dado que o usuário está na tela de cadastro
            Quando ele preencher os seguintes campos <nome>,<sobrenome>,<endereco>,<cidade>,<cep>,<telefone>,<e-mail>
            Então clicar em "Concluir cadastro", o sistema deve exibir a <mensagem>

            Exemplos:
            | nome    | sobrenome  | endereço            | cidade      | cep         | telefone         | e-mail               | mensagem                                |
            | "José"  | "Pereira"  | "Rua A,45"          | "Campinas"  | "13000-000" | "(19)91234-5678" | "josepereira.com"    | "formato de e-mail inválido"            |
            | "Maria" | "Souza"    | "Rua das flores,12" | "São Paulo" | "01001-000" | "(11)91876-5432" | "maria@email.com"    | "Cadastro realizado com sucesso"        |
            |         | "Ferreira" | "Rua B,550"         | "Salvador"  | "40000-000" | "(71)98765-4321" | "ferreira@email.com" | "preencha todos os campos obrigatórios" |