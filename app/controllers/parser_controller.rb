class ParserController < ApplicationController
  def index
    @pages = Page.all.parse_title!
  end
end
