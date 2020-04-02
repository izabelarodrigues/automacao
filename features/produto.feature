#language: pt

Funcionalidade: Inserir produto ao carrinho de compras 

    @teste_01
    Cenário: Inserir produto ao carrinho de compras
        Dado que eu acesso o site "Lojas Americanas"
        E busco pelo produto "Livro - A revolução dos bichos: Um conto de fadas"
        Então vejo que "Livro - A revolução dos bichos: Um conto de fadas" é exibido no catálogo
        Quando seleciono o produto e insiro no carrinho
        Então vejo o produto no carrinho de compras

    @teste_02
    Cenário: Validar produto sem estoque
        Dado que eu acesso o site "Lojas Americanas"
        E busco pelo produto "Álcool Gel 70° Bacterida 430g Bico Dosador"
        Quando seleciono o produto
        Então vejo a mensagem "Ops! Já vendemos o estoque"
