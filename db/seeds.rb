# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(:name => "seed-generated product 1", :description => "This is a seed product", :image_url => "hat.jpg")
Product.create(:name => "seed-generated product 2", :description => "This is a seed product", :image_url => "jacket.jpg")
Product.create(:name => "seed-generated product 3", :description => "This is a seed product", :image_url => "leprechaun.jpg")
