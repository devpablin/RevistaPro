class WelcomeController < ApplicationController
  def index
    @cover = Cover.first
    @portadas = Report.where(cover: "TRUE").sort_by(&:updated_at).reverse!.first(3)
  end
  def home
    @portadas = Report.where(cover: "TRUE").sort_by(&:updated_at).reverse!.first(3)
  end
  def building

  end
end
