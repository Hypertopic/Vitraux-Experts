require 'spec_helper'

feature 'Mettre en favori un commentaire' do
  scenario 'Depuis les vitraux les plus commentés' do
    visit '/'
    click_on 'Vitraux les plus commentés'
    click_on 'SNC - 003'
    expect(page).to have_content 'Commentaire interessant a garder en memoire'
    check 'Mettre en favori'
  end
end
