class WelcomeController < ApplicationController
  def index
    @portadas = Report.where(cover: 'true').first(3)
  end
end
