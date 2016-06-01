# Our CLI Controller
class BookClubPicks::CLI

  def call
    puts ""
    puts "Welcome to Book Club Picks.  You have come to the right place to find interesting books for your club to read. Browse through titles to find out more. Discover how many other clubs are currently reading that book!"
    puts ""
    puts "------------------------------"
    puts ""
    top_ten
  end

  def top_ten
    puts "Here are this week's top 10 books."
    puts "They are ranked in order of their current popularity on the Book Movement website."
    puts ""
    puts "------------------------------"
    puts ""
    puts_books
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

  def puts_books
    current_books = BookClubPicks::Scraper.today
    current_books.each_with_index do |book, index|
      puts "#{index+1}. #{book}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts ""
      input = gets.strip.downcase
      puts ""
      puts "------------------------------"
      
      if input.to_i > 0
        case input
        when "1"
        puts ""
        @individual_details = BookClubPicks::Book.scrape_details(0)
        book_details
        when "2"
        puts ""
        @individual_details = BookClubPicks::Book.scrape_details(1)   
        book_details
        when "3"
        puts ""
        @individual_details = BookClubPicks::Book.scrape_details(2)   
        book_details
        when "4"
        puts ""
        @individual_details = BookClubPicks::Book.scrape_details(3)   
        book_details
        when "5"
        puts ""
        @individual_details = BookClubPicks::Book.scrape_details(4)   
        book_details
        when "6"
        puts ""
        @individual_details = BookClubPicks::Book.scrape_details(5)  
        book_details
        when "7"
        puts ""
        @individual_details = BookClubPicks::Book.scrape_details(6)   
        book_details
        when "8"
        puts ""
        @individual_details = BookClubPicks::Book.scrape_details(7)   
        book_details
        when "9"
        puts ""
        @individual_details = BookClubPicks::Book.scrape_details(8)   
        book_details
        when "10"
        puts ""
        @individual_details = BookClubPicks::Book.scrape_details(9)   
        book_details
        end 
      elsif input == "exit"
        goodbye 
      end
    end
  end

  def book_details
    puts "Title: #{@individual_details.name}"
    puts ""
    puts "------------------------------"
    puts ""
    puts "#{@individual_details.published}"
    puts ""
    puts "------------------------------"
    puts ""
    puts "#{@individual_details.clubs}"
    puts ""
    puts "------------------------------"
    puts ""
    puts "#{@individual_details.summary}"
    puts ""
    puts "------------------------------" 
  end

  def goodbye
    puts ""
    puts "------------------------------"
    puts ""
    puts "See you when you are ready for your next book!"
    puts ""
    puts "------------------------------"
    puts ""
  end
end