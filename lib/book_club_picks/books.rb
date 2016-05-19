class BookClubPicks::Book

  attr_accessor :name, :author, :published, :clubs, :summary

  def self.today
    # scrape Book Movement and return the list of popular books 
    puts <<-DOC
    1. Title 1
    2. Title 2
    3. Title 3
    4. Title 4
    5. Title 5
    DOC
    self.scrape.books
  end

    #book_1 = self.new
    #book_1.name = "first book on list"
    #book_1.author = "author's name"
    #book_1.published = "copyright date"
    #book_1.clubs = "number of clubs reading it now"
    #book_1.summary = "summary"
  

  def self.scrape_books
    books = []

    books << self.scrape_book_movement
    #Go to Book Movement, find the books
    #Extract the properties
    #Instantiate a book

    books
  end

  def self.scrape_book_movement
    doc = Nokogiri::HTML(open("http://www.bookmovement.com/topClubPicks"))
    binding.pry
  end
end