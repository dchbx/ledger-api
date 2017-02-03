require 'rails_helper'

RSpec.describe EmployersController, type: :controller do
  describe "Employers API" do
    let!(:employer) { FactoryGirl.create(:employer) }
    
    context 'when correct header token is provided' do
      it 'retrieves employers information' do
        allow(controller).to receive(:verify_jwt_token).and_return(true)

        get :index, {format: :json}

        json = JSON.parse(response.body)

        # test for the 200 status-code
        expect(response).to be_success

        # check to make sure the right amount of messages are returned
        expect(json.length).to eq(1)
      end
    end

    context 'when incorrect header token is provided' do

      it 'returns 401 status code for invalid header token' do

        get :index, {format: :json}

        # test for the 401 status-code
        expect(response.status).to eq(401)

      end
    end

  end
end
