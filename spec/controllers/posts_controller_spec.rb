require 'rails_helper'

describe PostsController, type: :controller  do
  describe 'GET new' do
    it "render the :new temple" do
      get :new
      expect(response).to render_temple :new
    end
  end

end