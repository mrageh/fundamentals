class Catalogue

  def initialize
    @products = []
  end
  def cheapest
    @products.first.name unless @products.empty?
  end

  def << (product)
    @products  << product
  end
end
