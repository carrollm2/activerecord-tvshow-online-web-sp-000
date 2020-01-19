class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end


  def self.most_popular_show
    most_popular_show = ""
    Show.all.map do |s|
      if s.rating == Show.highest_rating
        most_popular_show = s
      end
    end
    most_popular_show
  end

end
