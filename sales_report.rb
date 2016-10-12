class Report
  def initialize(products)
    @products = products
  end

  def run
    money_taken = @products.inject(0) do |total, product|
      (product.price * product.sales) + total
    end

    total_sales = @products.inject(0) do |total, product|
      product.sales + total
    end

    money_taken / total_sales
  end
end
