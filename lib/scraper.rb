require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'



class Scraper

  def get_page
    doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
  end

  def get_courses
    get_page.css('.post')
  end

  def make_courses
<<<<<<< HEAD
    get_courses.each do |post|
      course = Course.new
      course.title = post.css("h2").text
      course.schedule = post.css(".date").text
      course.description = post.css("p").text
    #  binding.pry
   end
=======
    get_courses.each do |course|
      title = course.css('h2').text
      schedule = course.css('em').text
      description = course.css('p').text

      Course.new(title, schedule, description)
      binding.pry
    end
>>>>>>> 11322881c429b431454b131be49e0dbdcd57cbad
  end


  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
<<<<<<< HEAD
     end
   end


end
=======
    end



  end

end

Scraper.new.get_page
>>>>>>> 11322881c429b431454b131be49e0dbdcd57cbad
