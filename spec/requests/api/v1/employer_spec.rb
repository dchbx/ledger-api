describe "Employers API" do

  before(:each) do
  #ApplicationController.any_instance.stub(:verify_jwt_token => true)
  allow_any_instance_of(ApplicationController).to receive(:verify_jwt_token).and_return(true)
  end

  it 'retrieves employers information' do
    employer = FactoryGirl.create(:employer)
    get '/employers.json'
    #binding.pry
    json = JSON.parse(response.body)

    # test for the 200 status-code
    expect(response).to be_success

    # check to make sure the right amount of messages are returned
    expect(json.length).to eq(1)
  end
end
