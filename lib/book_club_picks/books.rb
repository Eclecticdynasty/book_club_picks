class BookClubPicks::Book

  attr_accessor :name, :author, :published, :clubs, :summary

  def initialize(name = nil, author = nil, published = nil, clubs = nil, summary = nil)
    @name = name
    @author = author
    @published = published
    @clubs = clubs
    @summary = summary
  end

  def self.scrape_details_1
    doc = Nokogiri::HTML(open("http://www.bookmovement.com/topClubPicks"))
    
    individual_details = self.new
    individual_details.name = doc.search("h2")[0].text.strip
    individual_details.published = doc.search("div.midd .omatter")[0].text.strip.split('Paperback').first.split('Hardcover').first.split('Kindle').first
    individual_details.clubs = doc.css(".recomnd")[0].text.strip
    individual_details.summary = doc.css(".midd .statement")[0].text.strip.gsub('â', "\'").gsub('Â', " ")
  
    individual_details
  end

  def self.scrape_details_2
    doc = Nokogiri::HTML(open("http://www.bookmovement.com/topClubPicks"))
    
    individual_details = self.new
    individual_details.name = doc.search("h2")[1].text.strip
    individual_details.published = doc.search("div.midd .omatter")[1].text.strip.split('Paperback').first.split('Hardcover').first.split('Kindle').first
    individual_details.clubs = doc.css(".recomnd")[1].text.strip
    individual_details.summary = doc.css(".midd .statement")[1].text.strip.gsub('â', "\'").gsub('Â', " ")
  
    individual_details
  end

  def self.scrape_details_3
    doc = Nokogiri::HTML(open("http://www.bookmovement.com/topClubPicks"))
    
    individual_details = self.new
    individual_details.name = doc.search("h2")[2].text.strip
    individual_details.published = doc.search("div.midd .omatter")[2].text.strip.split('Paperback').first.split('Hardcover').first.split('Kindle').first
    individual_details.clubs = doc.css(".recomnd")[2].text.strip
    individual_details.summary = doc.css(".midd .statement")[2].text.strip.gsub('â', "\'").gsub('Â', " ")
  
    individual_details
  end

  def self.scrape_details_4
    doc = Nokogiri::HTML(open("http://www.bookmovement.com/topClubPicks"))
    
    individual_details = self.new
    individual_details.name = doc.search("h2")[3].text.strip
    individual_details.published = doc.search("div.midd .omatter")[3].text.strip.split('Paperback').first.split('Hardcover').first.split('Kindle').first
    individual_details.clubs = doc.css(".recomnd")[3].text.strip
    individual_details.summary = doc.css(".midd .statement")[3].text.strip.gsub('â', "\'").gsub('Â', " ")
  
    individual_details
  end

  def self.scrape_details_5
    doc = Nokogiri::HTML(open("http://www.bookmovement.com/topClubPicks"))
    
    individual_details = self.new
    individual_details.name = doc.search("h2")[4].text.strip
    individual_details.published = doc.search("div.midd .omatter")[4].text.strip.split('Paperback').first.split('Hardcover').first.split('Kindle').first
    individual_details.clubs = doc.css(".recomnd")[4].text.strip
    individual_details.summary = doc.css(".midd .statement")[4].text.strip.gsub('â', "\'").gsub('Â', " ")
  
    individual_details
  end

  def self.scrape_details_6
    doc = Nokogiri::HTML(open("http://www.bookmovement.com/topClubPicks"))
    
    individual_details = self.new
    individual_details.name = doc.search("h2")[5].text.strip
    individual_details.published = doc.search("div.midd .omatter")[5].text.strip.split('Paperback').first.split('Hardcover').first.split('Kindle').first
    individual_details.clubs = doc.css(".recomnd")[5].text.strip
    individual_details.summary = doc.css(".midd .statement")[5].text.strip.gsub('â', "\'").gsub('Â', " ")
  
    individual_details
  end

  def self.scrape_details_7
    doc = Nokogiri::HTML(open("http://www.bookmovement.com/topClubPicks"))
    
    individual_details = self.new
    individual_details.name = doc.search("h2")[6].text.strip
    individual_details.published = doc.search("div.midd .omatter")[6].text.strip.split('Paperback').first.split('Hardcover').first.split('Kindle').first
    individual_details.clubs = doc.css(".recomnd")[6].text.strip
    individual_details.summary = doc.css(".midd .statement")[6].text.strip.gsub('â', "\'").gsub('Â', " ")
  
    individual_details
  end

  def self.scrape_details_8
    doc = Nokogiri::HTML(open("http://www.bookmovement.com/topClubPicks"))
    
    individual_details = self.new
    individual_details.name = doc.search("h2")[7].text.strip
    individual_details.published = doc.search("div.midd .omatter")[7].text.strip.split('Paperback').first.split('Hardcover').first.split('Kindle').first
    individual_details.clubs = doc.css(".recomnd")[7].text.strip
    individual_details.summary = doc.css(".midd .statement")[7].text.strip.gsub('â', "\'").gsub('Â', " ")
  
    individual_details
  end

  def self.scrape_details_9
    doc = Nokogiri::HTML(open("http://www.bookmovement.com/topClubPicks"))
    
    individual_details = self.new
    individual_details.name = doc.search("h2")[8].text.strip
    individual_details.published = doc.search("div.midd .omatter")[8].text.strip.split('Paperback').first.split('Hardcover').first.split('Kindle').first
    individual_details.clubs = doc.css(".recomnd")[8].text.strip
    individual_details.summary = doc.css(".midd .statement")[8].text.strip.gsub('â', "\'").gsub('Â', " ")
  
    individual_details
  end

  def self.scrape_details_ten
    doc = Nokogiri::HTML(open("http://www.bookmovement.com/topClubPicks"))
    
    individual_details = self.new
    individual_details.name = doc.search("h2")[9].text.strip
    individual_details.published = doc.search("div.midd .omatter")[9].text.strip.split('Paperback').first.split('Hardcover').first.split('Kindle').first
    individual_details.clubs = doc.css(".recomnd")[8].text
    individual_details.summary = doc.css(".midd .statement")[9].text.strip.gsub('â', "\'").gsub('Â', " ")
  
    individual_details
  end 
end
 

