class AddAuctionTypeIdToAuctions < ActiveRecord::Migration
  def change
    add_column :auctions, :auction_type_id, :integer
    add_index :auctions, :auction_type_id
  end
end
