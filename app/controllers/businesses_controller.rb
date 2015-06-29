class BusinessesController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @business = @category.businesses.new
  end

  def create
    @category = Category.find(params[:category_id])
    @business = @category.businesses.new(business_params)
    if @business.save
      flash[:notice] = "Business added."
      redirect_to categories_path(@business.category)
    else
      render :new
    end
  end

private
  def business_params
    params.require(:business).permit(:name)
  end
end
