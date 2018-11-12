require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('https://recipes.sainsburys.co.uk/recipes/main-courses/italian-pressed-sandwich'))

puts doc.css('.ingredient.p-ingredient span').children
