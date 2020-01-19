class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end


  def self.most_popular_show
    most_popular_show = nil
    Show.all.map do |s|
      if s.rating == Show.highest_rating
        most_popular_show = s
      end
    end
    most_popular_show
  end


  def self.lowest_rating
    self.minimum(:rating)
  end


  def self.least_popular_show
    least_popular_show = nil
    Show.all.map do |s|
      if s.rating == Show.lowest_rating
        least_popular_show = s
      end
    end
    least_popular_show
  end


  def self.ratings_sum

    Show.sum(:rating)

  end


  def self.popular_shows

    Song.where("rating > ?", 5)

  end


end
