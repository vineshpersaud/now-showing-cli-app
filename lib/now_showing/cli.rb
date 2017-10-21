class NowShowing::CLI
  def call
    welcome
    menu
  end

  def welcome

    puts "Welcome to Now Showing"
    puts "What would you like to found out about?"
    puts ""
    puts "1. Top ten movies in theathers now"
    puts "2. Movings opening this week"
    puts ""

  end

  def menu
    input = nil
    print "Please enter the number for the option you would like to see or exit to quit gem."
    input = gets.strip

      if input == "1"
         top
      elsif input == "2"
        opening
      elsif input == "exit"
        goodbye
      else
        print "Please enter a valid option of 1/2 or exit. "
        menu
      end

  end


  def top
    #Scrapes imdb.com for top ten movies and create array of instances of movies.
    NowShowing::Show.scrape_now_showing
    #puts list of top ten movies
    puts "The current top ten movies are:"
    puts "                   Title              |  Gross         |  Weekend  "
    puts ''

      NowShowing::Show.all.each_with_index do |movie ,index|
        puts "#{index+1}. #{movie.name.ljust(35)}| #{movie.gross.ljust(15)}| #{movie.weekend.ljust(15)}"
        # format text using .ljust
      end

      #puts option to show extended info about movie by inputing movie number
    input = nil
    puts ""
    print "Would you like more info about a movie if so enter the movie number else type exit/return. "

      while input != "exit"
        input = gets.strip
        if  input.to_i.between?(1, 10)
          movie = NowShowing::Show.all[input.to_i-1]
          #scrapes addtional movie info if not already scraped
          NowShowing::Show.more_info(movie) if movie.about  == nil || movie.metascore == nil
          puts ""
          puts "#{movie.name}"
          puts ""
          puts " Metascore:  #{movie.metascore}"
          puts ""
          puts "#{movie.about} "
          puts ""
          print "Please select another movie you would like more info on or you can return at exit. "
        elsif input == "return"
          # exits this loop and clears array to reset it
          input = "exit"
          NowShowing::Show.reset
          self.call
        elsif input == "exit"
          goodbye
        else
          print "Please enter valid  a option. "
        end
      end
  end

  def opening
    NowShowing::Opening.scrape
    #puts list of top ten movies
    puts "Movies opening this week are:"
    puts "                   Title                   "
    puts ''

      NowShowing::Opening.all.each_with_index do |movie,index|
        puts "#{index+1}. #{movie.name.ljust(35)}"
      end

        input = nil
        while input != "exit"
        input = gets.strip
        #if (1..NowShowing::Opening.all.length).to_a.include?(input.to_i)
        if  input.to_i.between?(1, NowShowing::Opening.all.count)
          movie = NowShowing::Opening.all[input.to_i-1]
          puts ""
          puts "#{movie.name}"
          puts ""
          puts " Metascore:  #{movie.metascore}"
          puts ""
          puts "#{movie.about} "
          puts ""
          print "Please select another movie you would like more info on or you can return at exit. "
        elsif input == "return"
          # exits this loop and clears array to reset it
          input = "exit"
          NowShowing::Opening.reset
          self.call
        elsif input == "exit"
          goodbye
        else
          print "Please enter valid  a option."
        end
      end
  end

  def goodbye
    puts ""
    puts "Thank you for using Now Showing gem. Bye!"
  end


end
