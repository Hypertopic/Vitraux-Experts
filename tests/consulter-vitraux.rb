
require 'spec_helper'

feature 'Consulter la liste des vitraux' do

  scenario 'Cas consulter depuis la page d\'accueil' do
    visit '/'
    expect(page).to have_content 'SNZ 011'
    expect(page).to have_content 'SNZ 012'
    expect(page).to have_content 'SNZ 013'
  end
  
end
