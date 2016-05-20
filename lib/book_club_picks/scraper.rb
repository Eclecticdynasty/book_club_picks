class BookClubPicks::Scraper

  attr_accessor :name, :author, :published, :clubs, :summary

  def self.today 
    self.scrape_books
  end

    #book_1 = self.new
    #book_1.name = "first book on list"
    #book_1.author = "author's name"
    #book_1.published = "copyright date"
    #book_1.clubs = "number of clubs reading it now"
    #book_1.summary = "summary"
  

  def self.scrape_books
    self.scrape_book_movement  
  end

  def self.scrape_book_movement
    doc = Nokogiri::HTML(open("http://www.bookmovement.com/topClubPicks"))
    current_books = []

    doc.search("div.midd").each do |book|
      current_books << book.search("h2").text
    end  
    current_books.each_with_index do |book, index|
      puts "#{index+1}. #{book}"
    end
  end
end