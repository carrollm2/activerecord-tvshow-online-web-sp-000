class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end


  def self.most_popular_show
    Show.all.map do |s|
      if s.rating == Show.highest_rating
        return s
      end
    end
  end

end
