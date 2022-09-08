describe 'Login com cadastro', :login3 do
    before(:each) do
        visit '/access'
    end

    it 'login com sucesso' do

        login_form = find('#login') # busca por escopo
        login_form.find('input[name=username]').set 'stark'
        login_form.find('input[name=password]').set 'jarvis!'
        

        click_button 'Entrar'

        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

        sleep 2
    end

    it 'login com escopo' do

        within '#login' do # escopo como metodo
            find('input[name=username]').set 'stark'
            find('input[name=password]').set 'jarvis!'
            
            click_button 'Entrar'
        end
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'

    end

    it 'Cadastro com sucesso', :cadastro do
        
        within '#signup' do
            find('input[name=username]').set 'stark'
            find('input[name=password]').set 'jarvis!'
            
            
        end
        click_link 'Criar Conta'
        expect(page). to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
    end
end