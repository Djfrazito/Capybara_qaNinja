describe 'Botões de radio', :upload do
    before(:each) do
        visit '/upload'
        @arquivo =  Dir.pwd + '/spec/fixtures/teste.txt'
        @imagem =   Dir.pwd + '/spec/fixtures/EV1.png'

    end
    it 'upload com arquivo texto' do
        attach_file('file-upload', @arquivo)
        click_button 'Upload'

        div_arquivo = find('#uploaded-file')
        expect(div_arquivo.text). to eql 'teste.txt'
    end

    it 'upload com imagem', :img do
        attach_file('file-upload', @imagem)
        click_button 'Upload'

        img = find('#new-image')
        expect(img[:src]).to include 'EV1.png'

    end

    after(:each) do
        sleep 3
    end
end