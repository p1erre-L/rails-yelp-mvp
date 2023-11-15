# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all

first = Restaurant.create!(name: 'First Restaurant', address: '12 eijfiesjf', phone_number: '0964738283',
                           category: 'french')
Restaurant.create!(name: 'Second Restaurant', address: '988 eijfiesjf', phone_number: '0664738283',
                   category: 'italian')

Restaurant.create!(name: 'Third Restaurant', address: 'DJ2 eijfiesjf', phone_number: '0564738283',
                   category: 'chinese')
Restaurant.create!(name: 'Fourth Restaurant', address: 'Ji8 eijfiesjf', phone_number: '0864738283',
                   category: 'italian')
Restaurant.create!(name: 'Fifth Restaurant', address: '652 eijfiesjf', phone_number: '0464738283',
                   category: 'french')

Review.create!(rating: 5, content: 'Super', restaurant: first)
