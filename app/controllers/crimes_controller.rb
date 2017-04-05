class CrimesController < ApplicationController
  def index
    @crimes = Unirest.get("https://data.cityofchicago.org/resource/6zsd-86xi.json?$limit=100").body
    render "index.html.erb"
  end

  def new
    @news = Unirest.get("https://newsapi.org/v1/articles?source=cnn&sortBy=top&apiKey=01372794d65d437b88b19d238dab8f89").body
    render "new.html.erb"
  end
end
