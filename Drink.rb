class Drink
  attr_accessor :name, :price, :stock

  def initialize
    drink = Drink.new('コーラ', 120, 5)
    puts 'この自動販売機に初期状態で入っている飲み物は120円のコーラが5本入っています。' 
  end

  def register(name, price, stock)
    @name = name
    @price = price
    @stock = stock
  end
end
