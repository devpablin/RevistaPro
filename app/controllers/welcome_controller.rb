class WelcomeController < ApplicationController
  def index
    @portadas = Report.where(cover: "TRUE").first(3)
  end
end
