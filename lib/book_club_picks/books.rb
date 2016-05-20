class BookClubPicks::Book

  attr_accessor :name, :author, :published, :clubs, :summary

  def initialize(name = nil, author = nil, published = nil, clubs = nil, summary = nil)
    @name = name
    @author = author
    @published = published
    @clubs = clubs
    @summary = summary
    @@all << self
  end

  def self.details
    self.scrape_book_info
  end

  def self.scrape_book_info
    doc = Nokogiri::HTML(open("http://www.bookmovement.com/topClubPicks"))
    #binding.pry
    individual_details = []

    doc.search("div.midd").each do |book|
      individual_details << {
      :name => book.search("h2").text,
      :published => book.search("div.midd .omatter").text
    }
    end
    individual_details
  end
  
end