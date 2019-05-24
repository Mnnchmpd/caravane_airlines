class ProductsController < ApplicationController
  def index
    @products = Product.all
    skip_policy_scope
  end

  def show
    @product = Product.find(params[:id])
    authorize @product
  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path(@products)
      authorize @product
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    authorize @product
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(params[:product])
    @product.save
    else render :edit
    # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to product_path(@product)
    end
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
