class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.string :name
      t.datetime :end_date
      t.timestamps
    end
  end
end
