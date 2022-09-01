describe 'Select2', :select2 do

    describe 'Single', :single do
        before do
            visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/single.html'
        end

        it 'seleciona ator por nome' do
            find('.select2-container').click
            find('.select2-results__option', text: 'Adam Sandler').click
        end

        it 'Busca e clica no ator' do
            find('.select2-container').click
            find('.select2-search__field').set 'Chris Rock'
            find('.select2-results__option').click
        end
    end

    describe 'Multiple' do
        before do
            
        end
    end

end