require_relative '../support/actions.rb'


Dado("que eu acesso o site {string}") do |url_ecommerce|
    visit ('https://www.americanas.com.br/')
  end
  
  Dado("busco pelo produto {string}") do |nome_produto|
    find('#h_search-input').set nome_produto
    sleep 5
    find('#h_search-btn').click
  end
  
  Então("vejo que {string} é exibido no catálogo") do |nome_produto|
    page.has_text?(nome_produto)    
    sleep 5
  end

  Quando("seleciono o produto e insiro no carrinho") do
    find("img[alt='Livro - A revolução dos bichos: Um conto de fadas']").click
    find('#freight-field').set "38405142"
    find('#freight-field-button').click    
    find('.bdJeMR').click
  end
  
  Então("vejo o produto no carrinho de compras") do
     expect(page).to have_css('.basket-productTitle__wrapper', text: 'Livro - A revolução dos bichos')
  end

  Quando("seleciono o produto" )do
  page.execute_script "window.scrollBy(0,500)"
    find("img[alt='Álcool Gel 70° Bacterida 430g Bico Dosador']").click
  end    

   Então("vejo a mensagem {string}") do |msg_estoque|
    mensagem = find('#title-stock')
    expect(mensagem.text).to eql msg_estoque
  end