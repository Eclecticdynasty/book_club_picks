class BookClubPicks::Book

  attr_accessor :name, :author, :published, :clubs, :summary
  
  DOC = Nokogiri::HTML(open("http://www.bookmovement.com/topClubPicks"))

  def initialize(name = nil, author = nil, published = nil, clubs = nil, summary = nil)
    @name = name
    @author = author
    @published = published
    @clubs = clubs
    @summary = summary
  end
  
  def self.scrape_details(num)
    DOC
    
    individual_details = self.new
    individual_details.name = DOC.search("h2")[num].text.strip
    individual_details.published = DOC.search("div.midd .omatter")[num].text.strip.split('Paperback').first.split('Hardcover').first.split('Kindle').first
    individual_details.clubs = DOC.css(".recomnd")[num].text.strip
    individual_details.summary = DOC.css(".midd .statement")[num].text.strip.gsub('â', "\'").gsub('Â', " ")
  
    individual_details
  end
end
 

