class Auction < ActiveRecord::Base
  include ActionView::Helpers::DateHelper

  attr_accessor :till_the_end
  attr_accessible :name, :end_date, :auction_type_id, :till_the_end

  belongs_to :auction_type

  validates_presence_of :auction_type_id, :name, :end_date
  validate :date_validator

  default_scope joins(:auction_type).readonly(false).order('weight ASC, end_date ASC')

  self.per_page = 10

  def date_validator
    errors.add(:end_date, "date cannot be in the past") if end_date && Time.now >= end_date
  end

  def name
    n  = read_attribute(:name)
    case auction_type_id
      when 2 # za grosik -> seed.rb
        '@@' + n.upcase
      when 3 # kup teraz -> seed.rb
        n.upcase + '!!!'
      else n.upcase
    end
  end

  def till_the_end
    Time.now < end_date ? time_ago_in_words(end_date, true) : nil
  end


end
