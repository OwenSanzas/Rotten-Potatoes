# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Seed the RottenPotatoes DB with some movies.
more_movies = [
    { title: 'My Neighbor Totoro', rating: 'G', release_date: '16-Apr-1988' },
    { title: 'Green Book', rating: 'PG-13', release_date: '16-Nov-2018' },
    { title: 'Parasite', rating: 'R', release_date: '30-May-2019' },
    { title: 'Nomadland', rating: 'R', release_date: '19-Feb-2021' },
    { title: 'CODA', rating: 'PG-13', release_date: '13-Aug-2021' },
    { title: 'Inception', rating: 'PG-13', release_date: '16-Jul-2010' },
    { title: 'The Dark Knight', rating: 'PG-13', release_date: '18-Jul-2008' },
    { title: 'Interstellar', rating: 'PG-13', release_date: '7-Nov-2014' },
    { title: 'The Prestige', rating: 'PG-13', release_date: '20-Oct-2006' },
    { title: 'The Dark Knight Rises', rating: 'PG-13', release_date: '20-Jul-2012' },
    { title: 'Dunkirk', rating: 'PG-13', release_date: '21-Jul-2017' },
    { title: 'Tenet', rating: 'PG-13', release_date: '3-Sep-2020' },
    { title: 'Memento', rating: 'R', release_date: '25-May-2001' },
    { title: 'Insomnia', rating: 'R', release_date: '24-May-2002' },
    { title: 'Batman Begins', rating: 'PG-13', release_date: '15-Jun-2005' },
    { title: 'Following', rating: 'R', release_date: '5-Apr-1999' },
    { title: 'The Dark Knight Trilogy', rating: 'PG-13', release_date: '18-Jul-2008' },
    { title: 'Tenet', rating: 'PG-13', release_date: '3-Sep-2020' },
    { title: 'Memento', rating: 'R', release_date: '25-May-2001' },

]
more_movies.each do |movie|
    Movie.find_or_create_by!(title: movie[:title], rating: movie[:rating], release_date: movie[:release_date])
end