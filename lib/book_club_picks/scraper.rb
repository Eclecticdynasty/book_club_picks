class BookClubPicks::Scraper

  def self.today 
    self.scrape_books
  end

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