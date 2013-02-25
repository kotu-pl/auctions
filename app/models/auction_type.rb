class AuctionType < ActiveRecord::Base
  attr_accessible :name, :weight
  has_many :auctions
end
