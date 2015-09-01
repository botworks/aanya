$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'aanya'
require 'webmock/rspec'

WebMock.disable_net_connect!(allow_localhost: true)

RSpec.configure do |config|
  config.before(:each) do
    stub_request(:get, 'https://api.telegram.org/bot12345:ABCDEFG/getMe')
        .with(headers: {'Accept' => '*/*', 'User-Agent' => 'Ruby'})
        .to_return(status: 200, body: '{
  \"ok\": true,
  \"result\": {
   \"id\": 137795583,
    \"first_name\": \"Aanya\",
    \"username\": \"aanyabot\"
  }
}', headers: {})
  end
end
