require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://skillcrush.com"))

puts doc.css('.line-height-scale-2 span').inner_html