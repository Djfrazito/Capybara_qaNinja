describe 'iframes', :iframes do
    describe 'bom', :nice_iframe do
        before(:each) do
            visit '/nice_iframe'
        end
        
        it 'Adicionar item no carrinho' do
            within_frame('burgerId') do
                product = find('.menu-item-info-box', text: 'REFRIGERANTE')
                product.find('.add-to-cart').click
                expect(find('#cart')).to have_content 'R$ 4,50'
            end
        end
    end

    describe 'bad iframe', :bad_iframe do
        before(:each) do
            visit '/bad_iframe'
        end

        it 'carrinho deve estar vazio' do
            script = '$(".box-iframe").attr("id", "tempId")' # adicionando um ID temporario, porque iframe só lida com name ou ID
            page.execute_script(script)

            within_frame('tempId') do
                expect(page).to have_content 'Seu carrinho está vazio!'    
            end
            
        end
    end
end