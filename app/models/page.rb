require 'parser'

class Page < ActiveRecord::Base
  attr_accessor :parsed_title
  validates :url, presence: true
  def self.parse_title!
    all.each{ |page| page.parse_title! }
  end
  def parse_title!
    @parsed_title = Parser.title_for(self.url).to_s
    @parsed_title.slice! "<title>"
    @parsed_title.slice! "</title>"
  end
end
