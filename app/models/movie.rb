class Movie < ApplicationRecord
    validates :title, presence: true
    validates :rating, inclusion: { in: %w[G PG PG-13 R NC-17], message: "%{value} is not a valid rating" }
    validates :release_date, presence: true
end
