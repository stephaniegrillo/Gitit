# require 'sinatra'
#
# get '/' do
#   "Hello World"
# end
#
# get '/wyncode' do
#   "<strong>Hello</strong><em>world</em>"
# end

# number 1 Hello index
#
#
# require 'sinatra'
#
# get '/' do
#  File.new("public/hello.txt").readlines
# end

question 3 

require 'sinatra'
require 'nokogiri'
require 'httparty'

get '/' do
  url = "https://miami.craigslist.org/search/mdc/sof"
  response = HTTParty.get(url)
  doc = Nokogiri::HTML(response.body)
  titles =doc.css(".result-title")
  dates = doc.css(".result-date")
  count = 0
  titles.map do |title|
  "<p>july 1 - #{title.to_str}</p>"
  end
end
