class Movie < ActiveRecord::Base
    def self.create_with_title(title)
        movie = Movie.create(title: title)
        movie
        # movie = Movie.new(title: title)
        # movie.save
        # movie
    end

    def self.first_movie
        # self.first
        first
    end
    def self.last_movie
        self.last
        # last
    end
    def self.movie_count
        self.count
        # self.all.length
        # count
    end
    def self.find_movie_with_id(movie_id)
        self.find(movie_id)
    end
    def self.find_movie_with_attributes(attributes)
        self.find_by(attributes)
    end
    def self.find_movies_after_2002
        self.where("release_date > 2002")
    end
    def update_with_attributes(attr)
        self.update(attr)
    end
    def self.update_all_titles(title)
        self.update(title: title)
    end
    def self.delete_by_id(movie_id)
        self.destroy(movie_id)
    end
    def self.delete_all_movies
        self.destroy_all
    end

end