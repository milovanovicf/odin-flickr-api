class GudboyController < ApplicationController
    require 'flickr'

    def index
    flickr = Flickr.new ENV["FLICKR_API_KEY"], ENV['FLICKR_SECRET']

    if params[:user_id].blank?
        @photos = flickr.photos.getRecent
      else
        @photos = flickr.photos.search(user_id: params[:user_id])
      end
    end
end
