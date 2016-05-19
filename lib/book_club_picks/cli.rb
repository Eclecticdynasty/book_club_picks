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
    puts "Which books would you like to learn more about?"
    puts "They are ranked in order of current popularity."
    puts ""
    puts ""
    puts "------------------------------"
    puts ""
    puts "1-10, 11-20, 21-30, 31-40, 41-50"
    puts "51-60, 61-70, 71-80, 81-90, 91-100"
    puts ""
    input = gets.strip.to_i
  end

  def list_book_info
    @books = BookClubPicks::Book.today
    #@books.each_with_index(1) do |book, index|
      #puts "#{index}. #{book.name} - #{book.author}"
    #end
  end

  def menu
    input = nil
    while input != "exit"
      puts ""
      puts "What book would you like to learn more about? Type return to go back to the main menu."
     input = gets.strip
      book_info = @books[input.to_i-1]
      case input
      when "1"
        puts ""
        puts "#{book.name} - #{book.author}"
        puts "------------------------------"
        puts ""
        puts "#{book.published}"
        puts "#{books.clubs}"
        puts ""
        puts "--------------Summary--------------"
        puts "#{books.summary}"
        puts "------------------------------"
      when "2"
        puts "More info on title 2"
      when "3"
        puts "More info on title 3"
      when "4"
        puts "More info on title 4"
      when "5"
        puts "More info on title 5"
      when "return"
        puts "main menu"
      else
        goodbye
      end
    end
  end

  def book_details
    puts "book details"
    menu

  end

  def goodbye
    puts "See you when you are ready for your next book!"
  end

end