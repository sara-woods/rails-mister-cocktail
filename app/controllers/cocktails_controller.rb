class CocktailsController < ApplicationController
  def index
    @cocktail = Cocktail.new
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail =  Cocktail.new(cocktail_params)
    @cocktails = Cocktail.all
    if @cocktail.save
      redirect_to cocktails_path(@cocktail)
    else
      respond_to do |format|
        format.js { render 'errorcocktail.js.erb' }
      end
      #render :index
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
