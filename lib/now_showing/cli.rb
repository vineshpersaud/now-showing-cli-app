class NowShowing::CLI

  def call
    welcome
  end

  def welcome
    puts "Welcome to Now Showing"
    puts "What would you like to found out about?"
    puts ""
    puts "1. Top ten movies in theathers now"
    puts "2. Movings opening this week"
    puts ""
  end

end