class Show < ActiveRecord::Base

  def highest_rating
    self.maximum(:rating)
  end

  def self.highest_rating
    self.maximum(:rating)
  end

end
