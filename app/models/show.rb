class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end


  def self.most_popular_show
    most_popular_show_name = ""
    Show.all.map do |s|
      binding.pry
      if s.rating == Show.highest_rating
        most_popluar_show_name = s
      end
    end
    most_popular_show.name

  end

end
