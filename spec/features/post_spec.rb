require 'rails_helper'

describe 'navigate' do
  describe 'index' do 
  	it 'has a tilte of Posts' do
  		visit posts_path
  		expect(page).to have_content(/Posts/) 
  	end
  end
end