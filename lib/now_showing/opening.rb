class NowShowing::Opening
<<<<<<< HEAD

  attr_accessor :name,:about,:metascore

  @@all=[]

  def initialize(name,about,metascore)
    @name=name
    @about=about
    @metascore=metascore
    @@all << self
  end

  def self.scrape
    doc = Nokogiri::HTML(open("http://www.imdb.com/movies-in-theaters/"))
    doc.css(".list_item").each do |movie|
      name = movie.css(".overview-top").css('h4').text
      about = movie.css('.outline').text.strip
      metascore = movie.css('.metascore').text.strip
      metascore = "Metacritic score not yet available" if metascore == ""
      self.new(name,about,metascore)

    end
    #remove last ten form list which are the weeks top ten

    @@all = @@all[0..-11] 
  end


  def self.all
    @@all
  end

  def self.reset
    self.all.clear
  end

end
=======
 
end
>>>>>>> e64af03802df66cdb7402e71515225939311d8c1
