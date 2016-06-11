class TweetsController < ApplicationController

   before_action :move_to_index, except: :index

   def index
      @tweets = Tweet.all.order("id DESC").page(params[:page]).per(5)
   end

   def new
   end

   def create
      # Tweet.create(tweet_params)
      Tweet.create(name: tweet_params[:name], image: tweet_params[:image], text: tweet_params[:text], user_id: current_user.id)
   end

   private
   def tweet_params
      params.permit(:name, :image, :text)
      # params.permit(:name, :image, :text).merge(user_id: current_user.id)
   end

   def move_to_index
      redirect_to action: :index unless user_signed_in?
   end
end