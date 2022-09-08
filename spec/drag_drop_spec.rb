describe 'Drap and Drop', :drop do

    before(:each) do
        visit '/drag_and_drop'
    end
    it 'Homen aranha pertença ao time do stark' do
        
        find('img[alt$=Aranha]').drag_to find('.team-stark .column')
        expect(find('.team-stark .column')).to have_css 'img[alt$=Aranha]'
        sleep 4        
    end
end