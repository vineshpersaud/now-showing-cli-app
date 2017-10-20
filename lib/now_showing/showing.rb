require 'pry'

class NowShowing::Show

  attr_accessor :name, :weekend,:gross,:link,:about,:metascore
  
  @@all=[]
  
  def initialize(name,weekend,gross,link,about=nil,metascore=nil)
    @name=name
    @weekend=weekend
    @gross=gross
    @link=link
    @about=about
    @metascore=metascore
    @@all << self 
  end
    
  def self.scrape_now_showing
    doc = Nokogiri::HTML(open("http://www.imdb.com/chart/boxoffice?ref_=nv_ch_cht_1 "))
    doc.css("#boxoffice").css('tr').each do |movie|
      #checks if the table row contains movie info
      if movie.css('.ratingColumn')[0] && movie.css('.titleColumn') && movie.css('.ratingColumn')[1]
        name = movie.css('.titleColumn').text.gsub("\n",' ').squeeze(' ')
        weekend = movie.css('.ratingColumn')[0].text.gsub("\n",' ').squeeze(' ')
        gross = movie.css('.ratingColumn')[1].text.gsub("\n",' ').squeeze(' ')
        link="http://www.imdb.com#{movie.css(".posterColumn").css('td')[0].css('a')[0]['href']}"
        self.new(name,weekend,gross,link)
      end
    end
  end


  def self.all
    @@all
  end

  def self.reset
    self.all.clear
  end

  #scrapes movie page for addtional movie info
  def self.more_info(movie)
    doc = Nokogiri::HTML(open(movie.link))
    movie.about = doc.css('.summary_text').text.gsub("\n",' ').squeeze(' ')
    movie.metascore = doc.css('.metacriticScore').text.gsub("\n",' ').squeeze(' ')
  end

end
