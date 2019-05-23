class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
   @product = Product.new(product_params)
    if @product.save
    redirect_to products_path(@products)
    else
      render :new
    end
  end

    def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(params[:product])
    @product.save
    # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to product_path(@product)
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :address)
  end
end
