class CreateAuctionTypes < ActiveRecord::Migration
  def change
    create_table :auction_types do |t|
      t.string :name
    end
  end
end
