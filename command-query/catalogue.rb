class Catalogue

  def initialize
    @products = []
  end
  def cheapest
    @products.sort.first.name unless @products.empty?
  end

  def << (product)
    @products  << product
  end
end
