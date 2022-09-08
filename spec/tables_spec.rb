describe 'Table', :table do
    before(:each) do
        visit '/tables#'
    end

    it 'Deve exibir o salario do stark' do
        
        atores = all('table tbody tr') #pega todos os linhas da tabela
        stark = atores.detect{ |ator| ator.text.include?('Robert Downey Jr') } #varre os elementos e acha a linha que contenha o text

        expect(stark.text).to include '10.000.000'
    end

    it 'Deve exibir o salario do bin diesel' do
        diesel = find('table tbody tr', text: '@vindiesel') # buscando direto pela TR
        expect(diesel).to have_content '10.000.000'
    end

    it 'Deve exibir o filme velozes' do
        diesel = find('table tbody tr', text: '@vindiesel')
        movie = diesel.all('td')[2].text # achando a coluna
        expect(movie).to eql 'Velozes e Furiosos'
    end

    it 'deve exibir o insta do Chris Evans' do
        evans = find('table tbody tr', text: 'Chris Evans')
        insta = evans.all('td')[4].text
        expect(insta).to eql '@teamcevans'
    end

    it 'deve selecionar o Chris Prat para remoção', :alert do
        prat = find('table tbody tr', text: '@prattprattpratt')
        prat.find('a', text: 'delete').click
        msg = page.driver.browser.switch_to.alert.text # acessa o texto do alert
        expect(msg).to eql 'Chris Pratt foi selecionado para remoção!'
    end

    
    it 'deve selecionar o Chris Prat para edicao', :alert2 do
        prat = find('table tbody tr', text: '@prattprattpratt')
        prat.find('a', text: 'edit').click
        msg = page.driver.browser.switch_to.alert.text # acessa o texto do alert
        expect(msg).to eql 'Chris Pratt foi selecionado para edição!'
    end

end