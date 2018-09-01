require_relative './spec_helper.rb'
require_relative '../app.rb'

RSpec.describe 'The HelloWorld App' do

  it 'should greet' do
    get '/'

    expect(last_response).to be_ok
    expect(last_response.body).to eq('Hello, World!')
  end
end