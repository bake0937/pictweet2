class TweetsController < ApplicationController

   def index
      @tweets = Tweet.all.order("id DESC").page(params[:page]).per(5)
      binding.pry
   end

   def new
   end

   def create
      Tweet.create(tweet_params)
      binding.pry
   end

   private
   def tweet_params
      params.permit(:name, :image, :text)
   end

end
