class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end


  def self.most_popular_show
    most_popular_show = self.highest_rating
    binding.pry
  end

end
