class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end

  def same_director_movies
    similar_movies = Movie.find_by_director director
    return similar_movies
  end
end
