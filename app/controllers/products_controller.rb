class ProductsController < ApplicationController
  def index
    skip_policy_scope

    @products = Product.where.not(latitude: nil, longitude: nil)
    @markers = @products.map do |product|
      {
        lat: product.latitude,
        lng: product.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { product: product })
      }
    end
  end

  def show
    @product = Product.find(params[:id])
    @booking = Booking.new
    authorize @product
  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to dashboard_path
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
    if @product.update(product_params)
      @product.save
      redirect_to product_path(@product)
      authorize @product
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
    authorize @product
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :address, :photo)
  end
end
