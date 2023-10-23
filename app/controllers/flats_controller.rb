require "open-uri"

class FlatsController < ApplicationController
  def index
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(URI.open(url).read)
  end


  def show
    # get the JSON
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    flats = JSON.parse(URI.open(url).read)

    # get the flat according to the params[:id]
    @flat = flats.find { |flat| flat["id"] == params[:id].to_i }
  end

end
