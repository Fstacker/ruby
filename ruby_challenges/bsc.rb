require 'nokogiri'
require 'open-uri'

#fetch and parse HTML document
doc = Nokogiri::HTML(open('https://static.bigskyconf.com/custompages/football/2018/msufb10.htm'))

puts "### Search for nodes by html"
puts doc.search('tr td')
