module Exercise
  module Fp
    class << self
      # Обратиться к параметрам фильма можно так:
      # film["name"], film["rating_kinopoisk"], film["rating_imdb"],
      # film["genres"], film["year"], film["access_level"], film["country"]
      def rating(array)
        films = array.select do |film|
          film['rating_kinopoisk'].to_f.positive? &&
            film['country'].to_s.split(',').count > 1
        end
        ratings = films.reduce(0) { |x, y| x + y['rating_kinopoisk'].to_f }
        ratings / films.count
      end

      def chars_count(films, threshold)
        films.select { |f| f['rating_kinopoisk'].to_f >= threshold }
            .reduce(0) { |x, y| x + y['name'].chars.select { |z| z.eql?('и') }.count }
      end
    end
  end
end
