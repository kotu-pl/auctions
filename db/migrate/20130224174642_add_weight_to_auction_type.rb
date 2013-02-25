class AddWeightToAuctionType < ActiveRecord::Migration
  def change
    add_column :auction_types, :weight, :integer, :default => 1
    add_index :auction_types, :weight
  end
end
