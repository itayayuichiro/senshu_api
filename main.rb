require 'sinatra'
require 'mechanize'

get '/' do
	agent = Mechanize.new
	page = agent.get("http://qiita.com")
	elements = page.search('title')
	puts elements
end