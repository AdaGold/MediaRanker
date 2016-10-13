# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

CSV.foreach('seed_csvs/movies.csv', :headers => true) do |csv_obj|
  Movie.create(name: csv_obj['name'], director: csv_obj['director'], description: csv_obj('description'))
end


CSV.foreach('seed_csvs/albums.csv', :headers => true) do |csv_obj|
  Book.create(name: csv_obj['name'], author: csv_obj['author'], description: csv_obj('description'))
end


CSV.foreach('seed_csvs/books.csv', :headers => true) do |csv_obj|
  Album.create(name: csv_obj['name'], recorded_by: csv_obj['recorded_by'], description: csv_obj('description'))
end