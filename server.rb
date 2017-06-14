require 'sinatra'

get '/' do
  "Hello World"
end

get '/wyncode' do
  "<strong>Hello</strong><em>world</em>"
end
