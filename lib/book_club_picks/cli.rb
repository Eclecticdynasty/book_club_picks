# Our CLI Controller
class BookClubPicks::CLI

  def call
    puts ""
    puts "Welcome to Book Club Picks.  You have come to the right place to find interesting books for your club to read. Browse through titles to find out more. Discover how many other clubs are currently reading that book!"
    puts ""
    puts "------------------------------"
    puts ""
    book_range
  end

  def book_range
    puts ""
    puts "Here are this week's top 10 books."
    puts "They are ranked in order of their current popularity on the Book Movement website."
    puts ""
    puts "------------------------------"
    puts ""
    BookClubPicks::Scraper.today
    puts ""
    puts "------------------------------"
    puts ""
    puts "Which book would you like to learn more about?"
    puts "Enter 1-10 to read more information about each title."
    puts "Enter exit when you are finished browsing."
    puts ""
    puts "------------------------------"
    puts ""
    menu
  end

  def menu
    input = nil
    while input != "exit"
      puts ""
      input = gets.strip.downcase

      if input.to_i > 0
        puts "#{book_details.name}"
        puts "#{book_details.published}"
      elsif input == "exit"
        goodbye 
      end
    end
  end

  def book_details
   BookClubPicks::Book.details
  end

  def goodbye
    puts "See you when you are ready for your next book!"
  end

end