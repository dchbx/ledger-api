describe "Employers API" do
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
