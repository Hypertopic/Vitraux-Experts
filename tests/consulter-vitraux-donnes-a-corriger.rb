
require 'spec_helper'

feature 'Consulter les vitraux dont les données sont à corriger' do

  scenario 'Cas consulter depuis la page d\'accueil' do
    visit '/'
    expect(page).to have_content 'Données à corrgier (6)'
    expect(page).to have_content 'SM 009 b'
    expect(page).to have_content 'SM 016'
    expect(page).to have_content 'SNZ 506'
    expect(page).to have_content 'SNZ 516'
    expect(page).to have_content 'SNZ 517'
    expect(page).to have_content 'SNZ 518'
  end
  
   scenario 'Cas consulter depuis la liste des données à corriger' do
    visit '/'
    click_on 'Données à corriger (6)'
    expect(page).to have_content 'SM 009 b'
    expect(page).to have_content 'SM 016'
    expect(page).to have_content 'SNZ 506'
    expect(page).to have_content 'SNZ 516'
    expect(page).to have_content 'SNZ 517'
    expect(page).to have_content 'SNZ 518'
  end

end
