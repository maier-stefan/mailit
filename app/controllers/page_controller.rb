class PageController < ApplicationController
require 'open-uri'
  def timetable
    i = -1
    @concerts = []
    temp_home = open("http://www.berghain.de/")
    homedata = Nokogiri::HTML(temp_home)
    homedata.css('.content').at_css(".home_col").css("a").each do |link|
    temp_content = open("http://www.berghain.de#{link[:href]}")
    data = Nokogiri::HTML(temp_content)
    i = i+1
    @concerts[i] = data.css('body')

    end

  end



end
