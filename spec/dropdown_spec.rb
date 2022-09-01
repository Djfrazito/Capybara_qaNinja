describe 'Caixa de opções', :dropdown do

    it 'testar a caixa de seleção' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        select('Bucky', from: 'dropdown') # só funciona com ID
        sleep 3
    end

    it 'Item especifico com find' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list') # metodo para achar um select que nao tenha ID
        drop.find('option', text: 'Bucky').select_option
        sleep 3
    end
    

    it 'selecionando qualquer item', :sample do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list') # metodo para achar um select que nao tenha ID
        drop.all('option').sample.select_option
    end
end