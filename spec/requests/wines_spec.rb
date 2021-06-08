require 'rails_helper'

RSpec.describe "Wines", type: :request do
  describe "Show all wines" do
    it 'show wines to index' do
  
    get wine_path
    @user = User.new(email: 'test17@example.com', password: 'papaya30', password_confirmation: 'papaya30')
   
    @wines = Wine.all
    expect(response).to render_template(root_path)
    end
  end 
end
