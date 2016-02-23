class InicioController < ApplicationController

def index
	url = "http://quemcuida.com.br/blog/feed/"
	_feed = Feedjira::Feed.fetch_and_parse url

	@links=[]
	_feed.entries.take(5).each do |post|
		@links << [ [ post.title, post.url ], post.published ]
	end
end

end
