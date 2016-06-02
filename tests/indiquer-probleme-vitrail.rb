require 'spec_helper'

feature 'Indiquer un problème sur un vitrail' do

  scenario 'Indiquer un problème sur un vitrail' do
    visit '/'
    click_on 'VSNZ 104'
    click_on 'Flag_date'
    fill_in 'Flag_message', :with => 'La date ne semble pas bonne'
    click_on 'Envoyer'
    visit '/'
    click_on 'Données incorrectes'
    expect(page).to have_content 'VSNZ 104'
  end

end
