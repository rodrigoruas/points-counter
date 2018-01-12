class NewslettersController < ApplicationController

  def index
    @newsletters = Newsletter.all
    @newsletter = Newsletter.new
  end

  def create
    @newsletter = Newsletter.new(newsletter_params)
    @newsletter.save
  end

  private

  def newsletter_params
    params.require(:newsletter).permit(:name)
  end
end
