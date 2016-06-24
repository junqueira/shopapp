class ProductsController < ApplicationController
  before_action :set_product, only: [:edit, :update]

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def new
  	@product = Product.new
  	# @product.category_id = params['category_id']
  end

  def edit
  end

  def create
  	@product = Product.new(product_params)
  	if @product.save
  		redirect_to products_path, notice: 'Produto criado com sucesso.'
  	else
  		render action: 'new'
  	end
  end

  def update
  	if @product.update(product_params)
  		redirect_to products_path, notice: 'Produto atualizado com sucesso.'
  	else
  		render action: 'edit'
  	end
  end

	private
	  # Use callbacks to share common setup or constraints between actions.
	  def set_product
	    @product = Product.find(params[:id])
	  end

	  # Only allow a trusted parameter "white list" through.
	  def product_params
	    params.require(:product).permit(:name, :price, :active)
	  end

end
