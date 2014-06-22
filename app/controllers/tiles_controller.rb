require 'open-uri'

class TilesController < ApplicationController
  def index
    # Performance could by improved by caching the top movies in a database
    # and updating it periodically instead fetching the list on every request
    imdb_top_250_uri = 'http://www.imdb.com/chart/top?ref_=nv_ch_250_4'
    doc = Nokogiri::HTML open(imdb_top_250_uri)
    @tiles = doc.css('.chart .titleColumn a')
                .map(&:content)
                .first(8 * 8)
                .shuffle
  end
end
