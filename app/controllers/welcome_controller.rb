class WelcomeController < ApplicationController
  def index
    @cover = Cover.first
    @portadas = Report.where(cover: "TRUE").first(3)
  end
  def building

  end
end
