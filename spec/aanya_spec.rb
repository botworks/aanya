require 'spec_helper'

describe Aanya do
  it 'has a version number' do
    expect(Aanya::VERSION).not_to be nil
  end

  it 'can query mocked requests' do
    uri = URI("https://api.telegram.org/bot12345:ABCDEFG/getMe")
    response = Net::HTTP.get(uri)

    expect(response).to be_an_instance_of(String)
  end

  it 'can make successful API request' do
    response = Aanya::TelegramBot.requestApi("getMe","12345:ABCDEFG")

    expect(response).to be_an_instance_of(String)
  end

end
