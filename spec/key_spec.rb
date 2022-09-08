describe 'Teclado', :key do
    before(:each) do
        visit '/key_presses'
    end

    it 'Enviando teclas' do

        teclas = %i[tab enter shift control alt] #criando array de simbolos

        teclas.each do |t|
            find('#campo-id').send_keys t
            expect(page).to have_content 'You entered: ' + t.to_s.upcase
            sleep 1
        end

    end

    it 'Enviando letras', :letras do
        letras = %w[a s d f g e] #criando array de strings

        letras.each do |l|
            find('#campo-id').send_keys l
            expect(page).to have_content 'You entered: ' + l.to_s.upcase
            sleep 1
        end

    end
end