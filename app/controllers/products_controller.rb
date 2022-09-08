class ProductsController < ApplicationController
  def index
    product = Product.all
    render json: product.as_json
  end

  def show
    @product = Product.find_by(id: params["id"])
    # render json: product.as_json(methods: [:is_discounted?, :tax, :total])
    render template: "products/show"
  end

  def create
    @product = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["url"],
      description: params["description"],
    )
    @product.save
    # render json: product.as_json
    render template: "products/show"
  end

  def update
    @product = Product.find_by(id: params["id"])
    @product.name = params["name"] || product.name
    @product.price = params["price"] || product.price
    @product.image_url = params["image_url"] || product.image_url
    @product.description = params["description"] || product.description

    @product.save
    # render json: product.as_json
    render template: "products/show"
  end

  def destroy
    product = Product.find_by(id: params["id"])
    product.destroy
    render json: { message: "Product was destroyed." }
  end
end
