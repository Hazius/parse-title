require 'open-uri'
require 'nokogiri'
class Parser
  def self.title_for(url)
    html = open(url)
    doc = Nokogiri::HTML(html.read)
    doc.encoding = 'utf-8'
    doc.css('title')
  rescue Exception => e
    e
  end
end