require 'nokogiri'

class Fetcher

  attr_reader :links

  def initialize(term)
    uri = "http://www.google.com/search?q=#{term}"
    stream = URI("http://www.google.com/#{term}") 
    doc = Nokogiri::HTML(uri)
    @links = Array.new
    doc.css('div#ires li.g h3.r a').each do |link|
      if link['href'] =~ /^\/url?/
        @links << URI("http://www.google.com/#{link['href']}")
      end
    end
  end

end