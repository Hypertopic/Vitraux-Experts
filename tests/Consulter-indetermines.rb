require 'spec_helper'

feature 'Indiquer un problème sur un vitrail' do

  scenario 'Cas depuis la liste de vitraux indéterminés' do
    visit '/'
    click_on 'Vitraux indéterminés'
    expect(page).to have_content 'SNZ 104'
    expect(page).to have_content 'SNZ 104 - Jeunes filles couronnées'
    expect(page).to have_content 'SNZ 107'
  end

  scenario 'Cas depuis la page d accueil' do
    visit '/'
    expect(page).to have_content 'SNZ 104'
    expect(page).to have_content 'SNZ 104 - Jeunes filles couronnées'
    expect(page).to have_content 'SNZ 107'
  end
end
