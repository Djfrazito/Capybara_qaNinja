describe 'Select2', :select2 do

    describe 'Single', :single do
        before do
            visit '/apps/select2/single.html'
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

    describe 'Multiple', :multiple do
        before do
            visit '/apps/select2/multi.html'
        end

        def selecione(ator)
            find('.select2-selection--multiple').click
            find('.select2-search__field').set ator
            find('.select2-results__option').click
        end
        atores = ['Jim Carrey','Owen Wilson', 'Kevin James']

        it 'Seleciona atores' do

            atores.each do |a|
                selecione(a)
            end

        end
    end

end