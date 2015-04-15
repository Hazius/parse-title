class Admin::PagesController < ApplicationController
  before_action :set_page, only: [:show, :parse, :edit, :update, :destroy]

  def index
    @pages = Page.all
  end

  def show
  end

  def parse
    @page.parse_title!
    render :show
  end

  def new
    @page = Page.new
    render :show
  end

  def edit
    render :show
  end

  def create
    @page = Page.new(page_params)

    if @page.save
      redirect_to pages_url
    else
      render :show
    end

  end

  def update
    if @page.update(page_params)
      redirect_to pages_url
    else
      render :show
    end
  end

  def destroy
    @page.destroy
    redirect_to pages_url
  end

  private
    def set_page
      @page = Page.find(params[:id])
    end

    def page_params
      params.require(:page).permit(:url)
    end
end
