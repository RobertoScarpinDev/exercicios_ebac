            #language: pt
            Funcionalidade: Configurar produtos na EBAC-SHOP
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            e escolher a quantidade
            Para depois inserir no carrinho

            Contexto: Dado que estou na página de produtos da loja EBAC-SHOP

            Cenário: Seleção de produtos
            Dado que o usuário está na página de seleção de produtos
            Quando ele selecionar mais que 10 produtos
            Então o sistema deve exibir a mensagem de erro "maxímo 10 produtos"

            Cenário: Seleção de cor
            Dado que o usuário está na página de seleção de cor
            Quando ele selecionar o produto
            Então cor do produto deve ser escolhida

            Cenário: Seleção de quantidade
            Dado que o usuário está na página de seleção de quantidade
            Quando ele selecionar o produto
            Então quantidade do produto deve ser escolhida

            Cenário: Seleção de tamanho
            Dado qye o usuário está na pagina de seleção de tamanho
            Quando ele selecionar o produto
            Então o tamanho deve ser escolhido

            Cenário: limpar carrinho
            Quando ele selecionar limpar carrinho
            Então o sistema deve voltar para o estado original

            Esquema do Cenário:
            Quando o usuário selecionar <produto>, <cor>,<tamanho> e a <quantidade>
            Então o sistema deve exibir a mensagem "produto adicionado ao carrinho com sucesso!"

            Exemplos:

            | produto   | cor       | tamanho | quantidade | mensagem                                      |
            | "Calça"   | "Marron"  | "G"     | "2"        | "produto adicionado ao carrinho com sucesso!" |
            | "Jaqueta" | "Amarelo" | "M"     | "5"        | "produto adicionado ao carrinho com sucesso!" |
            | "Camisa"  | "Azul"    | "GG"    | "10"       | "produto adicionado ao carrinho com sucesso!" |


