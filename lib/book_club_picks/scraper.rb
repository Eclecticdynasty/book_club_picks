class BookClubPicks::Scraper

  def self.today 
    self.scrape_book_movement
  end

  def self.scrape_book_movement
    doc = Nokogiri::HTML(open("http://www.bookmovement.com/topClubPicks"))

    doc.search("div.midd").collect do |book|
      book.search("h2").text
    end 
  end
end