class Movie < ActiveRecord::Base
    def self.all_ratings
        Movie.pluck(:rating).uniq.sort
        #return ['G', 'PG', 'PG-13', 'R']
    end
    def self.with_ratings(ratings_to_show)
        if ratings_to_show == nil
            return Movie.all
        else
            return Movie.where(rating: ratings_to_show.keys)
            #return Movie.where("rating LIKE ?", ratings_to_show.keys)
        end
    end
end
