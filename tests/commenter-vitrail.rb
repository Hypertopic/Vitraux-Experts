require 'spec_helper'

feature 'Commenter un vitrail' do

  scenario 'Cas de commentaire initial ' do
    visit '/'
    click_on 'Vitraux indéterminés'
    click_on 'SNZ 104'
    click_on 'Boîte de dialogue vide'
    fill_in 'Commentaire', :with => 'mon super commentaire'
    click_on 'Envoyer'
    expect(page).to have_content 'mon super commentaire'
  end
  
   scenario 'Commentaire sur un autre commentaire' do
    visit '/'
    click_on 'Vitraux indéterminés'
    click_on 'SNZ 104'
    expect(page).to have_content 'mon super commentaire'
    click_on 'Répondre'
    fill_in 'Commentaire', :with => 'ma réponse au super commentaire'
    click_on 'Envoyer'
    expect(page).to have_content 'ma réponse au super commentaire'
  end

end
