class Movie < ActiveRecord::Base
    def self.all_ratings
        Movie.pluck(:rating).uniq.sort
    end
    def self.with_ratings(ratings_to_show)
        if ratings_to_show == nil
            return Movie.all
        else
            return Movie.where(rating: ratings_to_show.keys)
        end
    end
end
