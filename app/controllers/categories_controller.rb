class CategoriesController < ApplicationController
  layout "content"
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  # GET /reviews
  # GET /reviews.json
  def index
    @categories = Category.all
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
    @reviews = @category.reviews
    @category6500id = Category.where(name: '6500at').first.id
    @category5400id = Category.where(name: '5400at').first.id
    @category4200id = Category.where(name: '4200at').first.id
    @category6500 = Category.find(@category6500id)
    @category5400 = Category.find(@category5400id)
    @category4200 = Category.find(@category4200id)
  end

  # GET /reviews/new
  def new
    @category = Category.new
  end

  # GET /reviews/1/edit
  def edit

  end

  # POST /reviews
  # POST /reviews.json
  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Artist was successfully created.' }
        format.json { render :show, status: :created, location: @category}
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: 'Category was successfully updated.' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url, notice: 'Artist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name, :logo ,:img)
    end
end
