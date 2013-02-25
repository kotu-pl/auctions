module AuctionsHelper
  def json_process(auctions)
    auctions.map{|a| [a.id, a.end_time] }
  end
end
