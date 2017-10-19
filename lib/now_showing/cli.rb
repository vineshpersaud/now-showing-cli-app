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
      elsif input == "exit"
      else
        print "Please enter a valid option of 1/2 or exit. "
        menu
      end
  end

end