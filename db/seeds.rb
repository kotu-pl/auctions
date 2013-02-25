# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

auction_types = [AuctionType.create(:name => "zwykla", :weight => 10),
                 AuctionType.create(:name => "za grosik", :weight => 5),
                 AuctionType.create(:name => "kup teraz", :weight => 1)]

auction_types.each do |at|
  (1..5).to_a.each do |x|
    Auction.create!(:name => "Aukcja typu \"#{at.name}\" nr #{x}", :auction_type_id => at.id, :end_date => Time.now + 60 * rand(2..10))
  end
end

