class Tweet < ActiveRecord::Base
  belongs_to :user               #usersテーブルとのアソシエーション
  has_many :comments             #commentsテーブルとのアソシエーション
end
