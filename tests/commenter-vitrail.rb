require 'spec_helper'

feature 'Commenter un vitrail' do

  scenario 'Commenter un vitrail' do
    visit '/'
    click_on 'Vitraux indéterminés'
    click_on 'SNZ 104'
    click_on 'Boîte de dialogue vide'
    fill_in 'Commentaire', :with => 'mon super commentaire'
    click_on 'Envoyer'
    expect(page).to have_content 'mon super commentaire'
  end

end
