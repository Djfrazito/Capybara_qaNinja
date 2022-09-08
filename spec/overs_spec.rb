describe 'Mouse Hover', :hover do
    before(:each) do
        visit '/hovers'

    end

    it 'quando passo o mouse sobre o blade' do
        find('img[alt*=Blade]').hover
        
        expect(page).to have_content 'Nome: Blade'
    end

    it 'quando passo o mouse sobre o Pantera Negra' do
        find('img[alt^=Pantera]').hover
        
        expect(page).to have_content 'Nome: Pantera Negra'
    end
    it 'quando passo o mouse sobre o Homem Aranha' do
        find('img[alt$=Aranha]').hover
        
        expect(page).to have_content 'Nome: Homem Aranha'
    end

    after(:each) do
        sleep 3
    end
end